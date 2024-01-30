import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class OrdersDetailImageAndPriceSession extends StatelessWidget {
  const OrdersDetailImageAndPriceSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: sWidth * 0.20,
          backgroundImage: const AssetImage(phoneImage),
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Iphone 11 ( 15',
              style: textHeadBold1.copyWith(fontSize: sWidth * 0.06),
            ),
            CircleAvatar(
              radius: sWidth * 0.025,
              backgroundImage: const AssetImage(iconNottoCoin),
            ),
            Text(
              ' )',
              style: textHeadBold1.copyWith(fontSize: sWidth * 0.06),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Price', style: textHeadMedium1),
            kWidth10,
            Text(
              '₹19,999',
              style: textHeadBold1.copyWith(fontSize: sWidth * 0.05),
            ),
          ],
        ),
        kHeight20,
      ],
    );
  }
}
