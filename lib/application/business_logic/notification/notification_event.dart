part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications({required bool reset}) =
      GetNotifications;
  const factory NotificationEvent.getNotificationsNext() = GetNotificationsNext;
  const factory NotificationEvent.resetLength() = ResetLength;
}
