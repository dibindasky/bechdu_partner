import 'package:json_annotation/json_annotation.dart';

import 'transcation.dart';

part 'get_credited_transcations_response_model.g.dart';

@JsonSerializable()
class GetCreditedTranscationsResponseModel {
  List<Transcation>? data;

  GetCreditedTranscationsResponseModel({this.data});

  factory GetCreditedTranscationsResponseModel.fromJson(
      Map<String, dynamic> json) {
    return _$GetCreditedTranscationsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetCreditedTranscationsResponseModelToJson(this);
  }
}
