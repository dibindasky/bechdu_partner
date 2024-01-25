import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_answer_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_tabs.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class RequotePriceSession extends StatelessWidget {
  const RequotePriceSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(elevation: 10,
          child: const CustomCircleShape()),
        Column(
          children: [
            CircleAvatar(
                radius: sWidth * 0.20,
                backgroundImage: const AssetImage(phoneImage)),
            kHeight30,
            const RequoteTabs(),
            kHeight20,
            const RequoteAnswerSession()
          ],
        )
      ],
    );
  }
}

class CustomCircleShape extends StatelessWidget {
  const CustomCircleShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: VerticalCurvesClipper(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: sWidth,
          height: sHeight,
          decoration: const BoxDecoration(
            color: kWhite,
            boxShadow: [
              BoxShadow(
                color:kBlack,
                blurRadius: 5.0,
                offset: Offset(-5.0, -5.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
