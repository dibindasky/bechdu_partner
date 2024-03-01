import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class AuthCustomButtom extends StatelessWidget {
  const AuthCustomButtom({
    super.key,
    required this.onTap,
    required this.text,
    required this.backgroundColor,
  });

  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: kRadius50,
        child: ColoredBox(
          color: backgroundColor,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Center(
                  child: Text(
                text,
                style: textHeadBoldBig.copyWith(color: kWhite),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
