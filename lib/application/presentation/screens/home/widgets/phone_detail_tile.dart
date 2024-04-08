import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

class PhoneDetailTile extends StatelessWidget {
  const PhoneDetailTile({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        Navigator.pushNamed(context, Routes.orderScreen,
            arguments: orderDetail);
      },
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: kWhite,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: sWidth * 0.17,
                  width: sWidth * 0.22,
                  child: FittedBox(
                      child: Image.network(
                    orderDetail.productDetails!.image!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.broken_image_outlined,
                        color: kGreyLight),
                  )),
                ),
                kWidth20,
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderDetail.productDetails?.name ?? '-----------',
                        style: textHeadRegular1,
                      ),
                      Text(
                        '₹ ${orderDetail.promo?.price == '' ? orderDetail.productDetails?.price : "${orderDetail.productDetails?.price} + ${orderDetail.promo?.price} \n(${orderDetail.promo?.code ?? ''})"}',
                        style: textHeadRegular1.copyWith(color: kGreyLight),
                      ),
                      Row(
                        children: [
                          Text(orderDetail.coins ?? '--', style: textHeadBold1),
                          kWidth5,
                          CircleAvatar(
                            radius: sWidth * 0.02,
                            backgroundColor: kWhite,
                            backgroundImage: const AssetImage(iconNottoCoin),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Expanded(
                  child: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kBluePrimary,
                  ),
                ),
                kWidth10
              ],
            ),
          ),
        ),
      ),
    );
  }
}
