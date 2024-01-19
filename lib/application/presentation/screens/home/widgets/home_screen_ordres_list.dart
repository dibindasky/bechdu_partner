import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_orders_tile.dart';
import 'package:flutter/material.dart';

class HomeScreenOrdersList extends StatelessWidget {
  const HomeScreenOrdersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) => const OrdersListTileHome(),
      ),
    );
  }
}

