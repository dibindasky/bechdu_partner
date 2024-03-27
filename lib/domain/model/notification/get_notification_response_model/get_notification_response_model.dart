import 'package:json_annotation/json_annotation.dart';

import 'notification_model.dart';

part 'get_notification_response_model.g.dart';

@JsonSerializable()
class GetNotificationResponseModel {
  List<NotificationModel>? data;
  int? length;

  GetNotificationResponseModel({this.data, this.length});

  factory GetNotificationResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetNotificationResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetNotificationResponseModelToJson(this);
}
