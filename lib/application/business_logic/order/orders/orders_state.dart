part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      required bool showNewNotification,
      required bool newOrder}) = _Initial;

  factory OrdersState.initial() => const OrdersState(
      isLoading: false,
      hasError: false,
      showNewNotification: false,
      newOrder: true);
}
