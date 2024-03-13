part of 'pickup_partner_bloc.dart';

@freezed
class PickupPartnerEvent with _$PickupPartnerEvent {
  const factory PickupPartnerEvent.addPickupPartner(
          {required AddPickupPartnerModel addPickupPartnerModel}) =
      AddPickupPartner;
  const factory PickupPartnerEvent.getPickupPartners() = GetPickupPartners;
  const factory PickupPartnerEvent.blocPickupPartners({required String id}) =
      BlocPickupPartners;
  const factory PickupPartnerEvent.unBlocPickupPartners({required String id}) =
      UnBlocPickupPartners;
  const factory PickupPartnerEvent.getPartnerProfile() = GetPartnerProfile;
  const factory PickupPartnerEvent.assignOrderToPickupPartner(
      {required String partnerId,
      required String orderId}) = AssignOrderToPickupPartner;
  const factory PickupPartnerEvent.deAssignOrderFromPickupPartner(
      {required String orderId}) = DeAssignOrderFromPickupPartner;
  const factory PickupPartnerEvent.reset() = Reset;
}
