import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'get_partner_new_orders_response_model.g.dart';

@JsonSerializable()
class GetPartnerNewOrdersResponseModel {
  List<Order>? orders;

  GetPartnerNewOrdersResponseModel({this.orders});

  factory GetPartnerNewOrdersResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetPartnerNewOrdersResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$GetPartnerNewOrdersResponseModelToJson(this);
}
