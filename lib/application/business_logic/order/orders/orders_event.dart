part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.acceptOrder() = _AcceptOrder;
  const factory OrdersEvent.makeNewOrder() = _MakeNewOrder;
}
