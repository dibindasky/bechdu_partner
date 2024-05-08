import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // put final price to controller
      print('price =>${orderDetail.productDetails?.price}');
      print('promo =>${orderDetail.promo?.price}');
      context.read<OrdersBloc>().finalPriceController.text = '';
      int price = int.parse(context.read<RequoteBloc>().finalPrice != ''
          ? context.read<RequoteBloc>().finalPrice
          : orderDetail.productDetails?.price ?? '0');
      if (orderDetail.promo?.price != '' && orderDetail.promo?.price != null) {
        context.read<OrdersBloc>().finalPriceController.text =
            (price + int.parse(orderDetail.promo?.price ?? '0')).toString();
      } else {
        context.read<OrdersBloc>().finalPriceController.text = price.toString();
      }
    });
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
        orderDetail.promo?.price != '' && orderDetail.promo?.price != null
            ? kHeight10
            : kEmpty,
        orderDetail.promo?.price != '' && orderDetail.promo?.price != null
            ? Text.rich(
                TextSpan(
                  text: 'The promo code ',
                  style: textHeadRegular2,
                  children: [
                    TextSpan(
                      text: '${orderDetail.promo?.code}',
                      style: const TextStyle(
                          color: kGreenPrimary, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text:
                          ' has been applied to this order, adding its value of ',
                      style: textHeadRegular2,
                    ),
                    TextSpan(
                      text: '₹${orderDetail.promo?.price}',
                      style: const TextStyle(
                          color: kGreenPrimary, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: '.',
                      style: textHeadRegular2,
                    ),
                  ],
                ),
              )
            : kEmpty,
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
