import 'package:json_annotation/json_annotation.dart';

import 'order_detail.dart';

part 'get_partner_order_response_model.g.dart';

@JsonSerializable()
class GetPartnerOrderResponseModel {
  List<OrderDetail>? orders;

  GetPartnerOrderResponseModel({this.orders});

  factory GetPartnerOrderResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetPartnerOrderResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPartnerOrderResponseModelToJson(this);

  GetPartnerOrderResponseModel copyWith({
    List<OrderDetail>? orders,
  }) {
    return GetPartnerOrderResponseModel(
      orders: orders ?? this.orders,
    );
  }
}
