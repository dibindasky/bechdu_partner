part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.acceptOrder({required String orderId}) =
      AcceptOrder;
  const factory OrdersEvent.cancelOrder(
      {required String orderId, required String reason}) = CancelOrder;
  const factory OrdersEvent.completeOrder(
      {required String orderId,
      required CompleteOrderModel completeOrderModel}) = CompleteOrder;
  const factory OrdersEvent.getNewOrder({required bool call}) = GetNewOrder;
  const factory OrdersEvent.getPartnerOrders({required bool call}) = GetPartnerOrders;
  const factory OrdersEvent.removePickupPartner({required String orderId}) =
      RemovePickupPartner;
  const factory OrdersEvent.refresPartnerOrders() = RefresPartnerOrders;
  const factory OrdersEvent.refreshNewOrder() = RefreshNewOrder;
  const factory OrdersEvent.changeTab({required int tab}) = ChangeTab;
  const factory OrdersEvent.changePickupPartner(
      {required PickUpPerson pickUpPerson,
      required String orderId}) = ChangePickupPartner;
  const factory OrdersEvent.checkErrorCompleteOrder() = CheckErrorCompleteOrder;
  const factory OrdersEvent.addDiviceBill() = AddDiviceBill;
  const factory OrdersEvent.removeDiviceBill() = RemoveDiviceBill;
  const factory OrdersEvent.addIdCardImage() = AddIdCardImage;
  const factory OrdersEvent.removeIdCardImage() = RemoveIdCardImage;
  const factory OrdersEvent.addDeviceImages() = AddDeviceImages;
  const factory OrdersEvent.removeDeviceImage({required int index}) =
      RemoveDeviceImage;
  const factory OrdersEvent.reset() = Reset;
}
