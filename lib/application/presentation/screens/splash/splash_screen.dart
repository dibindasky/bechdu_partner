import 'dart:async';

import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      // Navigator.pushNamed(context, Routes.bottomBar);
      Navigator.pushNamed(context, Routes.orderScreen, arguments:  <String,bool>{'newOrder': true,'detail':true});
    });
    return Scaffold(
      backgroundColor: kBluePrimary,
      body: Center(
        child: Text(
          'BECHDU',
          style: textHeadBoldBig.copyWith(color: kWhite),
        ),
      ),
    );
  }
}
