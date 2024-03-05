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
}
