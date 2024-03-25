import 'dart:async';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/notification/get_notification_response_model/notification_model.dart';
import 'package:bechdu_partner/domain/repository/service/notification_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificatonRepo notificatonRepo;
  int size = 15;
  NotificationBloc(this.notificatonRepo) : super(NotificationState.initial()) {
    on<GetNotifications>(getNotifications);
    on<GetNotificationsNext>(getNotificationsNext);
  }

  FutureOr<void> getNotifications(GetNotifications event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final phone = await SharedPref.getPhone();
    final result = await notificatonRepo.getNotifications(
        phone: phone!,
        pageSizeQueryModel: PageSizeQueryModel(page: 1, pageSize: size));
    result.fold(
        (l) => emit(state.copyWith(isLoading: false)),
        (r) =>
            emit(state.copyWith(isLoading: false, notificationList: r.data)));
  }

  FutureOr<void> getNotificationsNext(GetNotificationsNext event, emit) async {
    emit(state.copyWith(pageLoading: true, hasError: false));
    final phone = await SharedPref.getPhone();
    final result = await notificatonRepo.getNotifications(
        phone: phone!,
        pageSizeQueryModel: PageSizeQueryModel(page: 1, pageSize: ++size));
    result.fold(
        (l) => emit(state.copyWith(pageLoading: false)),
        (r) =>
            emit(state.copyWith(pageLoading: false, notificationList: r.data)));
  }
}
