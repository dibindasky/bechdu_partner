part of 'pickup_partner_bloc.dart';

@freezed
class PickupPartnerEvent with _$PickupPartnerEvent {
  const factory PickupPartnerEvent.addPickupPartner(
          {required AddPickupPartnerModel addPickupPartnerModel}) =
      AddPickupPartner;
  const factory PickupPartnerEvent.getPickupPartners() = GetPickupPartners;
}
