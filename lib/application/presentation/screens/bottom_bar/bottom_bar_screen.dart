import 'package:bechdu_partner/application/presentation/screens/bottom_bar/widgets/custom_bottom_bar.dart';
import 'package:bechdu_partner/application/presentation/screens/bottom_bar/widgets/toggle_button_orders.dart';
import 'package:bechdu_partner/application/presentation/screens/home/home_screen.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenBottomBar extends StatelessWidget {
  const ScreenBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    return const Scaffold(
      body: Stack(
        children: [
          ScreenHome(),
          CustomBottomBar(),
          ToggleButtonOrders()
        ],
      ),
    );
  }
}
