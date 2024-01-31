import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/login_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/otp_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/bottom_bar/bottom_bar_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/notification/notificaton_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/order/order_detail_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/add_pick_up/add_pick_up_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_list/pick_up_list_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_profile/pick_up_profile_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/points/points_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/settings/settings_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/splash/splash_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/transcations_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenLogin());
      case Routes.otpPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenOTP());
      case Routes.addPickUpPage:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenAddPickUpPartner());
      case Routes.partnersList:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenPickUpPartnersList());
      case Routes.settingsPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSettings());
      case Routes.pointsPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenPoints());
      case Routes.transcationPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenTranscations());
      case Routes.pickUpProfilePage:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenPickUpPartnerProfile());
      case Routes.bottomBar:
        return MaterialPageRoute(builder: (ctx) => const ScreenBottomBar());
      case Routes.orderScreen:
        return arguments is Map<String, bool> &&
            arguments['newOrder'] != null &&
            arguments['detail'] != null ? MaterialPageRoute(
              builder: (ctx) => ScreenOrderDetail(
                  newOrder: arguments['newOrder']!,
                  detail: arguments['detail']!)) : _errorScreen();
      case Routes.notificationPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenNotification());
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}
