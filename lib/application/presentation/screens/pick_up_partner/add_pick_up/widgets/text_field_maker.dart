import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class TextFieldMaker extends StatelessWidget {
  const TextFieldMaker({
    super.key,
    required this.child,
    required this.headline,
  });

  final Widget child;
  final String headline;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headline,
          style: textHeadMedium1,
        ),
        kHeight10,
        child,
        kHeight10
      ],
    );
  }
}
