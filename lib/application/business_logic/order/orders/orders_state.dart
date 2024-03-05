part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState(
      {required bool isLoading,
      required bool hasError,
      required bool acceptOrderLoading,
      required bool acceptOrderError,
      required bool acceptOrder,
      String? message,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
      required int orderTab}) = _Initial;

  factory OrdersState.initial() => const OrdersState(
      isLoading: false,
      hasError: false,
      orderTab: 0,
      acceptOrder:false,
      acceptOrderError: false,
      acceptOrderLoading: false);
}
