import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class TopCoinPointsAvatar extends StatelessWidget {
  const TopCoinPointsAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: sWidth * 0.115,
          backgroundColor: klightGreen,
          child: CircleAvatar(
            radius: sWidth * 0.10,
            backgroundColor: kBluePrimary,
            child: CircleAvatar(
              radius: sWidth * 0.075,
              backgroundImage: const AssetImage(iconNottoCoin),
              backgroundColor: kBluePrimary,
            ),
          ),
        ),
        kHeight10,
        Text(
          '0 Points',
          style: textHeadBoldBig2,
        ),
        kHeight30,
      ],
    );
  }
}
