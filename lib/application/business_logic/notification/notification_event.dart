part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications() = GetNotifications;
  const factory NotificationEvent.getNotificationsNext() = GetNotificationsNext;
}