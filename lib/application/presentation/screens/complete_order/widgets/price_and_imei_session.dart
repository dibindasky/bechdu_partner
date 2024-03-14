import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceAndImeiSession extends StatelessWidget {
  const PriceAndImeiSession({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CircleAvatar(
            backgroundColor: kWhite,
            radius: sWidth * 0.20,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(orderDetail.productDetails?.image ?? ''),
            ),
          ),
        ),
        kHeight10,
        Text('Final price', style: textHeadRegular2),
        CustomTextFormField(
          keyboardType: TextInputType.number,
          validate: Validate.notNull,
          controller: context.read<OrdersBloc>().finalPriceController,
          hintText: 'Final price',
        ),
        kHeight10,
        Text('Imei Number', style: textHeadRegular2),
        CustomTextFormField(
          keyboardType: TextInputType.visiblePassword,
          validate: Validate.notNull,
          controller: context.read<OrdersBloc>().imeiNumberController,
          hintText: 'Imei Number',
        ),
        kHeight10,
      ],
    );
  }
}
