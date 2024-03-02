part of 'pickup_partner_bloc.dart';

@freezed
class PickupPartnerState with _$PickupPartnerState {
  const factory PickupPartnerState(
      {required bool isLoading,
      required bool hasError,
      required bool partnerAddingLoader,
      List<PickUpPerson>? pickUpPersons,
      required bool pickupPersonAdded,
      String? message}) = _Initial;
  factory PickupPartnerState.initial() => const PickupPartnerState(
      isLoading: false,
      hasError: false,
      partnerAddingLoader: false,
      pickupPersonAdded: false);
}
