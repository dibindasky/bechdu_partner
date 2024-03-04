import 'dart:async';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:bechdu_partner/domain/repository/service/order_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrderRepo _orderRepo;
  OrdersBloc(this._orderRepo) : super(OrdersState.initial()) {
    on<AcceptOrder>(acceptOrder);
    on<GetNewOrder>(getNewOrder);
    on<GetPartnerOrders>(getPartnerOrders);
    on<ChangeTab>(changeTab);
  }

  FutureOr<void> getPartnerOrders(GetPartnerOrders event, emit) async {
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
    final result = await _orderRepo.getPartnerAssignedOrders(phone: phone);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)),
        (r) => emit(state.copyWith(isLoading: false, partnerOrders: r.orders)));
  }

  FutureOr<void> getNewOrder(GetNewOrder event, emit) async {
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
    final result = await _orderRepo.getPartnerNewOrders(phone: phone);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)),
        (r) => emit(state.copyWith(isLoading: false, newOrders: r.orders)));
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
        acceptOrderLoading: false,
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
      add(const OrdersEvent.getPartnerOrders());
      add(const OrdersEvent.getNewOrder());
    });
  }
}
