import 'dart:async';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
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
  }

  FutureOr<void> addPickupPartner(AddPickupPartner event, emit) async {
    emit(state.copyWith(
        partnerAddingLoader: true,
        message: null,
        hasError: false,
        pickupPersonAdded: false));
    final phone = await SecureStorage.getPhone();
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
        pickupPersonAdded: false));
    final phone = await SecureStorage.getPhone();
    if (phone == null) {
      return emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'failed to connect with server, please try again'));
    }
    final result = await pickupPartnerRepo.getPickupPartner(phone: phone);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false, hasError: true, message: l.message)),
        (r) => emit(
            state.copyWith(isLoading: false, pickUpPersons: r.pickUpPersons)));
  }
}
