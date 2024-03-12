import 'package:json_annotation/json_annotation.dart';

part 'date_and_time_response_model.g.dart';

@JsonSerializable()
class DateAndTimeResponseModel {
  List<String>? dates;
  @JsonKey(name: 'time_slot')
  List<String>? timeSlot;

  DateAndTimeResponseModel({this.dates, this.timeSlot});

  factory DateAndTimeResponseModel.fromJson(Map<String, dynamic> json) {
    return _$DateAndTimeResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DateAndTimeResponseModelToJson(this);
}
