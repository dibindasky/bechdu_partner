part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState(
      {required bool isLoading,
      required bool hasError,
      required bool acceptOrderLoading,
      required bool acceptOrderError,
      required bool acceptOrder,
      required bool cancelOrder,
      required bool completeOrderLoading,
      required bool orderCompleted,
      required bool orderCompletionError,
      required bool newOrdesRefreshLoading,
      required bool partnerOrdesRefreshLoading,
      required bool orderDetailError,
      required bool popOrderScreen,
      String? message,
      ImageModel? deviceBill,
      ImageModel? idCard,
      List<ImageModel>? deviceImages,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
      OrderDetail? orderDetail,
      required int orderTab}) = _Initial;

  factory OrdersState.initial() => const OrdersState(
      isLoading: false,
      orderCompletionError: false,
      newOrdesRefreshLoading: false,
      partnerOrdesRefreshLoading: false,
      hasError: false,
      orderDetailError: false,
      orderTab: 0,popOrderScreen:false,
      acceptOrder: false,
      cancelOrder: false,
      acceptOrderError: false,
      completeOrderLoading: false,
      orderCompleted: false,
      acceptOrderLoading: false);
}
