import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText, required this.keyboardType,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: textHeadMedium1,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            gapPadding: 2,
            borderRadius: kRadius10,
            borderSide: const BorderSide(color: kBlack)),
        hintText: hintText,
        hintStyle: textHeadMedium1.copyWith(color: kGreyLight),
        border: OutlineInputBorder(
            gapPadding: 2,
            borderSide: const BorderSide(color: kGreyLight),
            borderRadius: kRadius10),
      ),
    );
  }
}
