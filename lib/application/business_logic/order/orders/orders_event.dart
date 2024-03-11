part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.acceptOrder({required String orderId}) =
      AcceptOrder;
  const factory OrdersEvent.cancelOrder({required String orderId}) =
      CancelOrder;
  const factory OrdersEvent.getNewOrder() = GetNewOrder;
  const factory OrdersEvent.refreshNewOrder() = RefreshNewOrder;
  const factory OrdersEvent.getPartnerOrders() = GetPartnerOrders;
  const factory OrdersEvent.removePickupPartner({required String orderId}) = RemovePickupPartner;
  const factory OrdersEvent.refresPartnerOrders() = RefresPartnerOrders;
  const factory OrdersEvent.changeTab({required int tab}) = ChangeTab;
  const factory OrdersEvent.changePickupPartner(
      {required PickUpPerson pickUpPerson,
      required String orderId}) = ChangePickupPartner;
}
