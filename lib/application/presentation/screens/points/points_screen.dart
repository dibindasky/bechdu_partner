import 'package:bechdu_partner/application/presentation/screens/points/widgets/coin_point_table.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/coins_points_history.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/top_coin_points_avatar.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class ScreenPoints extends StatefulWidget {
  const ScreenPoints({super.key});

  @override
  State<ScreenPoints> createState() => _ScreenPointsState();
}

class _ScreenPointsState extends State<ScreenPoints> {
  @override
  void initState() {
    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
    super.initState();
  }

  @override
  void dispose() {
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    super.dispose();
  }

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
