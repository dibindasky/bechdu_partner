import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_orders_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersHistoryList extends StatefulWidget {
  const OrdersHistoryList({
    super.key,
  });

  @override
  State<OrdersHistoryList> createState() => _OrdersHistoryListState();
}

class _OrdersHistoryListState extends State<OrdersHistoryList> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context.read<OrdersBloc>().add(const OrdersEvent.refresPartnerOrders());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            controller: controller,
            itemCount: state.partnerOrdesRefreshLoading
                ? state.partnerOrders!.length + 1
                : state.partnerOrders!.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (state.partnerOrders!.length == index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 100, left: 20, right: 20),
                  child:
                      ShimmerLoader(itemCount: 1, height: 150, width: sWidth),
                );
              }
              return Padding(
                padding: EdgeInsets.only(
                    bottom: state.partnerOrders!.length - 1 == index &&
                            !state.partnerOrdesRefreshLoading
                        ? 100
                        : 0),
                child: OrdersListTileHome(
                    orderDetail: state.partnerOrders![index],
                    showExpansion: false),
              );
            },
          );
        } else {
          return const Center(child: Text('Your orders list is empty'));
        }
      } else {
        return Center(
            child: InkWell(
          onTap: () {
            context
                .read<OrdersBloc>()
                .add(const OrdersEvent.getNewOrder(call: true));
            context
                .read<OrdersBloc>()
                .add(const OrdersEvent.getPartnerOrders(call: true));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getNewOrder(call: true));
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getPartnerOrders(call: true));
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
