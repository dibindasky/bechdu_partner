import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  String? type;
  String? title;
  String? body;
  @JsonKey(name: 'orderID')
  String? orderId;
  @JsonKey(name: '_id')
  String? id;
  DateTime? timestamp;

  NotificationModel({
    this.type,
    this.title,
    this.body,
    this.orderId,
    this.id,
    this.timestamp,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
