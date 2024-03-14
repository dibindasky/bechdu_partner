import 'package:json_annotation/json_annotation.dart';

part 'invoice_response_model.g.dart';

@JsonSerializable()
class InvoiceResponseModel {
  String? base64String;

  InvoiceResponseModel({this.base64String});

  factory InvoiceResponseModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceResponseModelToJson(this);
}
