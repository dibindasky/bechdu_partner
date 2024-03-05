import 'package:bechdu_partner/application/presentation/utils/clipper/bottom_left_to_right_curve.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginPageFirstHalfContainer extends StatelessWidget {
  const LoginPageFirstHalfContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomLeftToRightCurveClipper(),
      child: ColoredBox(
        color: kBluePrimary,
        child: SizedBox(
          height: sWidth * 1.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, right: 50),
                    child: Image.asset(loginPageImage),
                  ),
                ),
                FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Be a Bechdu Partner',
                        style: textHeadBoldBig.copyWith(
                            color: kWhite, fontSize: sWidth * 0.06),
                      ),
                      Text(
                        'One Step Ahead Towards\nThe Future.',
                        style: textHeadBoldBig.copyWith(
                            color: kWhite, fontSize: sWidth * 0.09),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
