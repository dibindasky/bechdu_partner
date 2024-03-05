import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class OrdersDetailImageAndPriceSession extends StatelessWidget {
  const OrdersDetailImageAndPriceSession({
    super.key, required this.image, required this.price, required this.coin, required this.deviceName,
  });

  final String image;
  final String price;
  final String coin;
  final String deviceName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: kWhite,
          radius: sWidth * 0.20,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.network(image),
          ),
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$deviceName ( $coin',
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
              '₹ $price',
              style: textHeadBold1.copyWith(fontSize: sWidth * 0.05),
            ),
          ],
        ),
        kHeight20,
      ],
    );
  }
}
