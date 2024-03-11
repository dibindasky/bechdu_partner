import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_orders_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersHistoryList extends StatelessWidget {
  const OrdersHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(builder: (context, state) {
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(color: kBluePrimary));
      }
      if (state.partnerOrders != null) {
        if (state.partnerOrders!.isNotEmpty) {
          return ListView.builder(
            itemCount: state.partnerOrders!.isNotEmpty
                ? state.partnerOrders!.length + 1
                : state.partnerOrders!.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                state.partnerOrders!.length == index
                    ? const SizedBox(height: 100)
                    : OrdersListTileHome(
                        orderDetail: state.partnerOrders![index],
                        showExpansion: false),
          );
        } else {
          return const Center(child: Text('Your orders list is empty'));
        }
      } else {
        return Center(
            child: InkWell(
          onTap: () {
            context.read<OrdersBloc>().add(const OrdersEvent.getNewOrder());
            context
                .read<OrdersBloc>()
                .add(const OrdersEvent.getPartnerOrders());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getNewOrder());
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getPartnerOrders());
                  },
                  icon: const Icon(Icons.refresh_sharp)),
              const Text('Something went worng, tap to refresh'),
              const SizedBox(width: double.infinity)
            ],
          ),
        ));
      }
    });
  }
}
