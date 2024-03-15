import 'package:json_annotation/json_annotation.dart';

import 'transcation_cash_model.dart';

part 'manual_transcation_response_model.g.dart';

@JsonSerializable()
class ManualTranscationResponseModel {
  List<TranscationCashModel>? data;

  ManualTranscationResponseModel({this.data});

  factory ManualTranscationResponseModel.fromJson(Map<String, dynamic> json) {
    return _$ManualTranscationResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ManualTranscationResponseModelToJson(this);
  }
}
