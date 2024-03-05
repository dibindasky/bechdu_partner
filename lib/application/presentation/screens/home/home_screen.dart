import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_appbar_session.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_screen_ordres_list.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [HomeScreenAppBar(), HomeScreenOrdersList()],
    );
  }
}
