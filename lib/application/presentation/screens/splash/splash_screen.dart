import 'dart:async';

import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(const AuthEvent.log());
    });
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        _navigateToSignInPage(context, state.isLogin);
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kBluePrimary,
          body: Center(
            child: ClipRRect(
              borderRadius: kRadius5,
              child: Text(
                'BECHDU',
                style: textHeadBoldBig.copyWith(color: kWhite),
              ),
            ),
          ),
        );
      },
    );
  }

  void _navigateToSignInPage(BuildContext context, bool toLogin) async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacementNamed(
          context, toLogin ? Routes.bottomBar : Routes.signInPage);
    });
  }
}
