import 'dart:async';
import 'package:bechdu_partner/data/feature/image_picker_service.dart';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/commen/image/image_model.dart';
import 'package:bechdu_partner/domain/model/commen/search_size_query/search_size_query.dart';
import 'package:bechdu_partner/domain/model/order/c_ancel_reason_model/c_ancel_reason_model.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/complete_order_model.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/get_pickup_partner_response_model/pick_up_person.dart';
import 'package:bechdu_partner/domain/repository/service/order_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final TextEditingController cancelController = TextEditingController();
  final TextEditingController resheduleController = TextEditingController();
  final TextEditingController imeiNumberController = TextEditingController();
  final TextEditingController finalPriceController = TextEditingController();
  final TextEditingController searchController = TextEditingController();

  int page = 1;
  int newSize = 10;
  int partnerSize = 10;

  final OrderRepo _orderRepo;
  final ImagePickerService imagePickerService;
  OrdersBloc(this._orderRepo, this.imagePickerService)
      : super(OrdersState.initial()) {
    on<AcceptOrder>(acceptOrder);
    on<CancelOrder>(cancelOrder);
    on<GetNewOrder>(getNewOrder);
    on<GetPartnerOrders>(getPartnerOrders);
    on<ChangeTab>(changeTab);
    on<RefreshNewOrder>(refreshNewOrder);
    on<RefresPartnerOrders>(refresPartnerOrders);
    on<ChangePickupPartner>(changePickupPartner);
    on<RemovePickupPartner>(removePickupPartner);
    on<CompleteOrder>(completeOrder);
    on<AddDiviceBill>(addDiviceBill);
    on<AddIdCardImage>(addIdCardImage);
    on<AddDeviceImages>(addDeviceImages);
    on<RemoveDeviceImage>(removeDeviceImage);
    on<RemoveDiviceBill>(removeDiviceBill);
    on<RemoveIdCardImage>(removeIdCardImage);
    on<CheckErrorCompleteOrder>(checkErrorCompleteOrder);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(OrdersState.initial());
  }

  FutureOr<void> checkErrorCompleteOrder(
      CheckErrorCompleteOrder event, emit) async {
    if (state.deviceImages == null ||
        state.deviceImages == [] ||
        state.idCard == null ||
        state.deviceBill == null) {
      emit(state.copyWith(orderCompletionError: true));
    } else {
      emit(state.copyWith(orderCompletionError: false));
    }
  }

  FutureOr<void> removeIdCardImage(RemoveIdCardImage event, emit) async {
    return emit(state.copyWith(idCard: null));
  }

  FutureOr<void> addDiviceBill(AddDiviceBill event, emit) async {
    final result = await imagePickerService.pickImage();
    result.fold((l) => null, (r) => emit(state.copyWith(deviceBill: r)));
  }

  FutureOr<void> removeDiviceBill(RemoveDiviceBill event, emit) async {
    return emit(state.copyWith(deviceBill: null));
  }

  FutureOr<void> addIdCardImage(AddIdCardImage event, emit) async {
    final result = await imagePickerService.pickImage();
    result.fold((l) => null, (r) => emit(state.copyWith(idCard: r)));
  }

  FutureOr<void> addDeviceImages(AddDeviceImages event, emit) async {
    final result = await imagePickerService.pickImage();
    result.fold((l) => null, (r) {
      List<ImageModel> images = List.from(state.deviceImages ?? []);
      images.add(r);
      return emit(state.copyWith(deviceImages: images));
    });
  }

  FutureOr<void> removeDeviceImage(RemoveDeviceImage event, emit) async {
    List<ImageModel> images = List.from(state.deviceImages ?? []);
    images.removeAt(event.index);
    return emit(state.copyWith(deviceImages: images));
  }

  FutureOr<void> completeOrder(CompleteOrder event, emit) async {
    emit(state.copyWith(
        completeOrderLoading: true,
        message: null,
        orderCompleted: false,
        cancelOrder: false,
        acceptOrder: false,
        acceptOrderError: false));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          completeOrderLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await _orderRepo.completeOrder(
        phone: phone,
        completeOrderModel: event.completeOrderModel,
        orderId: event.orderId);
    result.fold(
        (l) => emit(state.copyWith(
            completeOrderLoading: false,
            hasError: true,
            message: l.message)), (r) {
      emit(state.copyWith(
          completeOrderLoading: false,
          orderCompleted: true,
          message: r.message));
      add(const OrdersEvent.getPartnerOrders(call: true));
      add(const OrdersEvent.getNewOrder(call: true));
    });
  }

  FutureOr<void> getPartnerOrders(GetPartnerOrders event, emit) async {
    if (state.partnerOrders != null && !event.call) return;
    emit(state.copyWith(
        isLoading: true,
        message: null,
        orderCompleted: false,
        cancelOrder: false,
        acceptOrder: false,
        acceptOrderError: false));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await _orderRepo.getPartnerAssignedOrders(
        phone: phone,
        searchSizeQurey: SearchSizeQuery(
            page: page,
            pageSize: partnerSize = 10,
            search: searchController.text.trim()));
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)),
        (r) => emit(state.copyWith(isLoading: false, partnerOrders: r.orders)));
  }

  FutureOr<void> getNewOrder(GetNewOrder event, emit) async {
    if (state.newOrders != null && !event.call) return;
    emit(state.copyWith(
        isLoading: true,
        message: null,
        acceptOrder: false,
        acceptOrderError: false));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await _orderRepo.getPartnerNewOrders(
        phone: phone,
        searchSizeQurey: SearchSizeQuery(
            page: page,
            pageSize: newSize = 10,
            search: searchController.text.trim()));
    result.fold(
        (l) => emit(state.copyWith(
            newOrders: [],
            isLoading: false,
            hasError: true,
            message: l.message)),
        (r) => emit(state.copyWith(isLoading: false, newOrders: r.orders)));
  }

  FutureOr<void> refresPartnerOrders(RefresPartnerOrders event, emit) async {
    emit(state.copyWith(
        partnerOrdesRefreshLoading: true,
        message: null,
        acceptOrder: false,
        acceptOrderError: false));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          partnerOrdesRefreshLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await _orderRepo.getPartnerAssignedOrders(
        phone: phone,
        searchSizeQurey: SearchSizeQuery(
            page: page,
            pageSize: partnerSize += 10,
            search: searchController.text.trim()));
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true,
            message: l.message,
            partnerOrders: [],
            partnerOrdesRefreshLoading: false)),
        (r) => emit(state.copyWith(
            partnerOrders: r.orders, partnerOrdesRefreshLoading: false)));
  }

  FutureOr<void> refreshNewOrder(RefreshNewOrder event, emit) async {
    emit(state.copyWith(
        newOrdesRefreshLoading: true,
        message: null,
        acceptOrder: false,
        acceptOrderError: false));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          newOrdesRefreshLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await _orderRepo.getPartnerNewOrders(
        phone: phone,
        searchSizeQurey: SearchSizeQuery(
            page: page,
            pageSize: newSize += 10,
            search: searchController.text.trim()));
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true, message: l.message, newOrdesRefreshLoading: false)),
        (r) => emit(state.copyWith(
            newOrders: r.orders, newOrdesRefreshLoading: false)));
  }

  FutureOr<void> changeTab(ChangeTab event, emit) async {
    emit(state.copyWith(
        orderTab: event.tab,
        message: null,
        hasError: false,
        acceptOrder: false,
        acceptOrderError: false));
  }

  FutureOr<void> acceptOrder(AcceptOrder event, emit) async {
    emit(state.copyWith(
        acceptOrder: false,
        acceptOrderError: false,
        acceptOrderLoading: true,
        message: null));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          acceptOrderLoading: false,
          acceptOrderError: true,
          message: 'failed to connect, please try again'));
    }
    final result =
        await _orderRepo.acceptOrder(phone: phone, orderId: event.orderId);
    result.fold(
        (l) => emit(state.copyWith(
            acceptOrderError: true,
            acceptOrderLoading: false,
            message: l.message)), (r) {
      emit(state.copyWith(
          acceptOrderLoading: false, message: r.message, acceptOrder: true));
      add(const OrdersEvent.getPartnerOrders(call: true));
      add(const OrdersEvent.getNewOrder(call: true));
    });
  }

  FutureOr<void> cancelOrder(CancelOrder event, emit) async {
    emit(state.copyWith(
        cancelOrder: false,
        acceptOrderError: false,
        acceptOrderLoading: true,
        message: null));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          acceptOrderLoading: false,
          acceptOrderError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await _orderRepo.cancelOrder(
        phone: phone,
        orderId: event.orderId,
        cancelReasonModel: CAncelReasonModel(cancellationReason: event.reason));
    result.fold(
        (l) => emit(state.copyWith(
            acceptOrderError: true,
            acceptOrderLoading: false,
            message: l.message)), (r) {
      emit(state.copyWith(
          acceptOrderLoading: false, message: r.message, cancelOrder: true));
      add(const OrdersEvent.getPartnerOrders(call: true));
      add(const OrdersEvent.getNewOrder(call: true));
    });
  }

  FutureOr<void> changePickupPartner(ChangePickupPartner event, emit) {
    List<OrderDetail> orders = List.from(state.partnerOrders!);
    var index = orders.indexWhere((element) => element.id == event.orderId);
    final data = orders[index].partner!.copyWith(
        pickUpPersonName: event.pickUpPerson.name,
        pickUpPersonPhone: event.pickUpPerson.phone);
    final order = orders[index].copyWith(partner: data);
    orders[index] = order;
    emit(state.copyWith(partnerOrders: orders, message: null));
  }

  FutureOr<void> removePickupPartner(RemovePickupPartner event, emit) {
    List<OrderDetail> orders = List.from(state.partnerOrders!);
    var index = orders.indexWhere((element) => element.id == event.orderId);
    final data = orders[index]
        .partner!
        .copyWith(pickUpPersonName: '', pickUpPersonPhone: '');
    final order = orders[index].copyWith(partner: data);
    orders[index] = order;
    emit(state.copyWith(partnerOrders: orders, message: null));
  }
}
