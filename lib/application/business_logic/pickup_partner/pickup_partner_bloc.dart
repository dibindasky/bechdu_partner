import 'dart:async';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/partner_profile/partner_profile.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_model/add_pickup_partner_model.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/get_pickup_partner_response_model/pick_up_person.dart';
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pickup_partner_event.dart';
part 'pickup_partner_state.dart';
part 'pickup_partner_bloc.freezed.dart';

@injectable
class PickupPartnerBloc extends Bloc<PickupPartnerEvent, PickupPartnerState> {
  final PickupPartnerRepo pickupPartnerRepo;
  final TextEditingController nameControler = TextEditingController();
  final TextEditingController phoneControler = TextEditingController();
  PickupPartnerBloc(this.pickupPartnerRepo)
      : super(PickupPartnerState.initial()) {
    on<AddPickupPartner>(addPickupPartner);
    on<GetPickupPartners>(getPickupPartners);
    on<BlocPickupPartners>(blocPickupPartners);
    on<UnBlocPickupPartners>(unBlocPickupPartners);
    on<GetPartnerProfile>(getPartnerProfile);
    on<AssignOrderToPickupPartner>(assignOrderToPickupPartner);
    on<DeAssignOrderFromPickupPartner>(deAssignOrderFromPickupPartner);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(PickupPartnerState.initial());
  }

  FutureOr<void> addPickupPartner(AddPickupPartner event, emit) async {
    emit(state.copyWith(
        partnerAddingLoader: true,
        message: null,
        hasError: false,
        popOrderScreen: false,
        pickupPersonAdded: false,
        orderAssigned: false,
        orderDeAssigned: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          partnerAddingLoader: false,
          hasError: true,
          message: 'failed to add partner, please try again'));
    }
    final result = await pickupPartnerRepo.addPickupPartner(
        addPickupPartnerModel: event.addPickupPartnerModel, phone: phone);
    result.fold(
        (l) => emit(state.copyWith(
            partnerAddingLoader: false,
            hasError: true,
            message: l.message)), (r) {
      emit(state.copyWith(
          partnerAddingLoader: false,
          message: r.message,
          pickupPersonAdded: true));
      nameControler.text = '';
      phoneControler.text = '';
      add(const PickupPartnerEvent.getPickupPartners());
    });
  }

  FutureOr<void> getPickupPartners(GetPickupPartners event, emit) async {
    emit(state.copyWith(
        isLoading: true,
        message: null,
        hasError: false,
        popOrderScreen: false,
        pickupPersonAdded: false,
        orderAssigned: false,
        orderDeAssigned: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await pickupPartnerRepo.getPickupPartner(phone: phone);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)),
        (r) => emit(
            state.copyWith(isLoading: false, pickUpPersons: r.pickUpPersons)));
  }

  FutureOr<void> blocPickupPartners(BlocPickupPartners event, emit) async {
    emit(state.copyWith(
        isLoading: true,
        message: null,
        hasError: false,
        popOrderScreen: false,
        pickupPersonAdded: false,
        orderAssigned: false,
        orderDeAssigned: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await pickupPartnerRepo.blockPickupPartner(
        phone: phone, pickupPartnerId: event.id);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)), (r) {
      emit(state.copyWith(isLoading: false, message: r.message));
      add(const PickupPartnerEvent.getPickupPartners());
    });
  }

  FutureOr<void> unBlocPickupPartners(UnBlocPickupPartners event, emit) async {
    emit(state.copyWith(
        isLoading: true,
        message: null,
        popOrderScreen: false,
        hasError: false,
        pickupPersonAdded: false,
        orderAssigned: false,
        orderDeAssigned: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await pickupPartnerRepo.unBlockPickupPartner(
        phone: phone, pickupPartnerId: event.id);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)), (r) {
      emit(state.copyWith(isLoading: false, message: r.message));
      add(const PickupPartnerEvent.getPickupPartners());
    });
  }

  FutureOr<void> getPartnerProfile(GetPartnerProfile event, emit) async {
    emit(state.copyWith(
        isLoading: true,
        message: null,
        popOrderScreen: false,
        hasError: false,
        orderDeAssigned: false,
        orderAssigned: false,
        pickupPersonAdded: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await pickupPartnerRepo.getPartnerProfile(phone: phone);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)), (r) {
      emit(state.copyWith(isLoading: false, partnerProfile: r));
    });
  }

  FutureOr<void> assignOrderToPickupPartner(
      AssignOrderToPickupPartner event, emit) async {
    emit(state.copyWith(
        isLoading: true,
        popOrderScreen: false,
        assigningOrderLoader: true,
        orderAssigned: false,
        orderDeAssigned: false,
        message: null,
        hasError: false,
        pickupPersonAdded: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          popOrderScreen: true,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await pickupPartnerRepo.assignOrderToPickupPartner(
        phone: phone, orderId: event.orderId, pickupId: event.partnerId);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: l.message,
            popOrderScreen: true,
            assigningOrderLoader: false)), (r) {
      emit(state.copyWith(
          isLoading: false,
          message: r.message,
          assigningOrderLoader: false,
          orderAssigned: true,
          selectedPickup: state.pickUpPersons!
              .firstWhere((element) => element.id == event.partnerId)));
    });
  }

  FutureOr<void> deAssignOrderFromPickupPartner(
      DeAssignOrderFromPickupPartner event, emit) async {
    emit(state.copyWith(
        isLoading: true,
        assigningOrderLoader: true,
        orderDeAssigned: false,
        popOrderScreen: false,
        message: null,
        hasError: false,
        pickupPersonAdded: false));
    final phone = await SharedPref.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          popOrderScreen: true,
          hasError: true,
          message: 'failed to connect, please try again'));
    }
    final result = await pickupPartnerRepo.deAssignOrderFromPickupPartner(
        phone: phone, orderId: event.orderId);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false,
            hasError: true,
            popOrderScreen: true,
            message: l.message,
            assigningOrderLoader: false)), (r) {
      emit(state.copyWith(
          isLoading: false,
          message: r.message,
          assigningOrderLoader: false,
          orderDeAssigned: true,
          selectedPickup: null));
    });
  }
}
