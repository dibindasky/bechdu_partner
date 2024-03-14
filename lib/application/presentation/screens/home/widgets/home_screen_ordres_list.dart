import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/orders_list_tab/new_orders_tab.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/orders_list_tab/partner_accepted_orders_list_tab.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenOrdersList extends StatelessWidget {
  const HomeScreenOrdersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (partner) {
        context
            .read<OrdersBloc>()
            .add(const OrdersEvent.getNewOrder(call: false));
      }
      context
          .read<OrdersBloc>()
          .add(const OrdersEvent.getPartnerOrders(call: false));
    });
    return Expanded(
      child: RefreshIndicator(
        color: kBluePrimary,
        onRefresh: () async {
          if (partner) {
            context.read<OrdersBloc>().add(const OrdersEvent.refreshNewOrder());
          }
          context
              .read<PickupPartnerBloc>()
              .add(const PickupPartnerEvent.getPartnerProfile());
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
