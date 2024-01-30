import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.borderColor = kGreyLight,
      this.isObscure = false});

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final Color borderColor;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: textHeadMedium1,
      keyboardType: keyboardType,
      cursorColor: kBluePrimary,
      obscureText: isObscure,
      decoration: InputDecoration(
        focusColor: kBluePrimary,
        focusedBorder: OutlineInputBorder(
            gapPadding: 2,
            borderRadius: kRadius10,
            borderSide: const BorderSide(color: kBluePrimary)),
        contentPadding: const EdgeInsets.only(left: 10),
        enabledBorder: OutlineInputBorder(
            gapPadding: 2,
            borderRadius: kRadius10,
            borderSide: BorderSide(color: borderColor)),
        hintText: hintText,
        hintStyle: textHeadMedium1.copyWith(color: kGreyLight),
        border: OutlineInputBorder(
            gapPadding: 2,
            borderSide: BorderSide(color: borderColor),
            borderRadius: kRadius10),
      ),
    );
  }
}
