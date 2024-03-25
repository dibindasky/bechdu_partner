part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState(
      {required bool isLoading,
      required bool pageLoading,
      required bool hasError,
      String? message,
      List<NotificationModel>? notificationList}) = _Initial;
  factory NotificationState.initial() =>
      const NotificationState(isLoading: true, hasError: false,pageLoading:false);
}
