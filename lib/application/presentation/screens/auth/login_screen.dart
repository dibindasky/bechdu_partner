import 'package:bechdu_partner/application/presentation/screens/auth/widgets/login/login_first_half.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/login/login_page_second_half.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginPageFirstHalfContainer(),
              kHeight20,
              LoginPageSecondHalf()
            ],
          ),
        ),
      ),
    );
  }
}
