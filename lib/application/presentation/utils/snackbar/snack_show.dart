import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(
    {required BuildContext context,
    required String message,
    Color color = kGreenPrimary,
    int time = 1600}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.horizontal,
      content: Text(message),
      duration: Duration(milliseconds: time),
      backgroundColor: color,
    ),
  );
}
