part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.acceptOrder({required String orderId}) =
      AcceptOrder;
  const factory OrdersEvent.getNewOrder() = GetNewOrder;
  const factory OrdersEvent.getPartnerOrders() = GetPartnerOrders;
  const factory OrdersEvent.changeTab({required int tab}) = ChangeTab;
}
