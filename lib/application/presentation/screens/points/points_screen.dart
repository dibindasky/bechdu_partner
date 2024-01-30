import 'package:bechdu_partner/application/presentation/screens/points/widgets/coin_point_table.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/coins_points_history.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/top_coin_points_avatar.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenPoints extends StatelessWidget {
  const ScreenPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Points')),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopCoinPointsAvatar(),
              CoinPointTable(),
              kHeight20,
              CoinsPointsHistory()
            ],
          ),
        ),
      ),
    );
  }
}
