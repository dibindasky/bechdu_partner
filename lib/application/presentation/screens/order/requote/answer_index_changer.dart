import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_price_session.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';

class AnswerIndexChanger extends StatelessWidget {
  const AnswerIndexChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kWidth20,
        Expanded(
          child: StatusColoredBox(
              text: 'Cancel',
              color: kRed,
              fontWeight: FontWeight.w700,
              verticalPadding: 10),
        ),
        kWidth20,
        Expanded(
          child: StatusColoredBox(
              onTap: continueAnswer,
              text: 'Continue',
              color: kGreenPrimary,
              fontWeight: FontWeight.w700,
              verticalPadding: 10),
        ),
        kWidth20
      ],
    );
  }
}
