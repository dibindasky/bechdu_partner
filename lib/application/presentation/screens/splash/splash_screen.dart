import 'dart:async';

import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/firebase_api/firebase_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.forgroundMessage();
    notificationServices.firebaseInit(context);
    notificationServices.setupInteractMessage(context);
    notificationServices.isTokenRefresh();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(const AuthEvent.log());
      context.read<RoleBloc>().add(const RoleEvent.getRole());
    });
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        _navigateToSignInPage(context, state.isLogin, state.role);
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

  void _navigateToSignInPage(
      BuildContext context, bool isLogin, bool role) async {
    print("is partner => $role");
    Future.delayed(const Duration(milliseconds: 2000), () {
      partner = role;
      Navigator.pushReplacementNamed(
          context,
          isLogin
              ? role
                  ? Routes.bottomBar
                  : Routes.homePage
              : Routes.signInPage);
    });
  }
}
