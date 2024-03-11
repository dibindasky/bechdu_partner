import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/orders_list_tab/new_orders_tab.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/orders_list_tab/partner_accepted_orders_list_tab.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenOrdersList extends StatelessWidget {
  const HomeScreenOrdersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrdersBloc>().add(const OrdersEvent.getNewOrder());
      context.read<OrdersBloc>().add(const OrdersEvent.getPartnerOrders());
    });
    return Expanded(
      child: RefreshIndicator(
        color: kBluePrimary,
        onRefresh: () async {
          context.read<OrdersBloc>().add(const OrdersEvent.refreshNewOrder());
          context
              .read<OrdersBloc>()
              .add(const OrdersEvent.refresPartnerOrders());
          await Future.delayed(const Duration(seconds: 2));
        },
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            if (state.orderTab == 0) {
              return const NewOrdersList();
            } else {
              return const OrdersHistoryList();
            }
          },
        ),
      ),
    );
  }
}
