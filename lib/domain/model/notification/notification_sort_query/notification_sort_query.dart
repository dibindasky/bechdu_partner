import 'package:json_annotation/json_annotation.dart';

part 'notification_sort_query.g.dart';

@JsonSerializable()
class NotificationSortQuery {
  int? page;
  int? pageSize;
  String? type;
  String? from;
  String? to;

  NotificationSortQuery({
    this.page,
    this.pageSize,
    this.type,
    this.from,
    this.to,
  });

  factory NotificationSortQuery.fromJson(Map<String, dynamic> json) {
    return _$NotificationSortQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationSortQueryToJson(this);

  NotificationSortQuery copyWith({
    int? page,
    int? pageSize,
    String? type,
    String? from,
    String? to,
  }) {
    return NotificationSortQuery(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      type: type ?? this.type,
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }
}
