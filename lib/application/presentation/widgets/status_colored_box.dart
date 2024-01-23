import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class StatusColoredBox extends StatelessWidget {
  const StatusColoredBox(
      {super.key,
      required this.text,
      required this.color,
      this.fontWeight = FontWeight.w400,
      this.textColor = kWhite,
      this.verticalPadding = 5,this.onTap});

  final String text;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  final double verticalPadding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: color,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: verticalPadding),
            child: Center(
              child: Text(
                text,
                style: textHeadRegular1.copyWith(
                    color: textColor, fontWeight: fontWeight),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
