import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class OrdersDetailImageAndPriceSession extends StatelessWidget {
  const OrdersDetailImageAndPriceSession({
    super.key,
    required this.image,
    required this.price,
    required this.coin,
    required this.deviceName,
  });

  final String image;
  final String price;
  final String coin;
  final String deviceName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(elevation: 10,borderRadius: BorderRadius.circular(500),shadowColor: kBlack,
          child: CircleAvatar(
            backgroundColor: kWhite,
            radius: sWidth * 0.20,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(image),
            ),
          ),
        ),
        kHeight10,
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$deviceName ( $coin',
                style:
                    textHeadBold1.copyWith(fontSize: sWidth * 0.06, shadows: [
                  const Shadow(
                    offset: Offset(-0.3, 0.3),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ]),
              ),
              Material(elevation: 8,borderRadius: BorderRadius.circular(100),shadowColor: kBlack,
                child: CircleAvatar(
                  radius: sWidth * 0.025,
                  backgroundImage: const AssetImage(iconNottoCoin),
                ),
              ),
              Text(
                ' )',
                style:
                    textHeadBold1.copyWith(fontSize: sWidth * 0.06, shadows: [
                  const Shadow(
                    offset: Offset(-0.3, 0.3),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ]),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Price',
                style: textHeadMedium1.copyWith(shadows: [
                  const Shadow(
                    offset: Offset(-0.05, 0.05),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ])),
            kWidth10,
            Text(
              '₹ $price',
              style: textHeadBold1.copyWith(fontSize: sWidth * 0.05, shadows: [
                const Shadow(
                  offset: Offset(-0.2, 0.2),
                  blurRadius: 1.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ]),
            ),
          ],
        ),
        kHeight20,
      ],
    );
  }
}
