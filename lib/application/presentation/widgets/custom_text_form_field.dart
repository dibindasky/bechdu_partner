import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/validators/validators.dart';
import 'package:flutter/material.dart';

enum Validate { phone, email, none, notNull }

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.maxlength,
      this.keyboardType,this.textCapitalization=TextCapitalization.none,
      this.validate = Validate.none,
      this.borderColor = kGreyLight,
      this.isObscure = false});

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final Color borderColor;
  final bool isObscure;
  final int? maxlength;
  final Validate validate;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxlength,
      controller: controller,
      style: textHeadMedium1,
      keyboardType: keyboardType,
      cursorColor: kBluePrimary,
      obscureText: isObscure,
      textCapitalization: textCapitalization,
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
      validator: (value) {
        if (Validate.none == validate) {
          return null;
        } else if ((value == null || value.isEmpty) &&
            validate == Validate.notNull) {
          return 'Please enter $hintText';
        } else if (validate == Validate.email && !isValidEmail(value!)) {
          return 'Please enter a valid email address';
        } else if (Validate.phone == validate) {
          if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
            return 'Enter valid phone number (numeric characters only)';
          } else if (value.length != 10) {
            return 'Phone number should have exactly 10 digits';
          } else {
            return null;
          }
        }
        return null;
      },
    );
  }
}
