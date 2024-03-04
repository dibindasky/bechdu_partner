import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_orders_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewOrdersList extends StatelessWidget {
  const NewOrdersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(builder: (context, state) {
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(color: kBluePrimary));
      } else if (state.newOrders != null) {
        if (state.newOrders!.isNotEmpty) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.newOrders!.isNotEmpty
                ? state.newOrders!.length + 1
                : state.newOrders!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => state.newOrders!.length == index
                ? const SizedBox(height: 100)
                : OrdersListTileHome(
                    orderDetail: state.newOrders![index], newOrder: true),
          );
        } else {
          return const Center(child: Text('You have no new orders'));
        }
      } else {
        return const Center(
            child: Text('Something went worng, pull to refresh'));
      }
    });
  }
}
