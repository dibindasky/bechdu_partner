import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleButtonOrders extends StatelessWidget {
  const ToggleButtonOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 90,
        right: 30,
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return InkWell(
              onTap: () {
                context.read<OrdersBloc>().add(
                    OrdersEvent.changeTab(tab: state.orderTab == 0 ? 1 : 0));
              },
              child: Material(
                elevation: 5,
                borderRadius: kRadius50,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: state.orderTab == 0
                      ? const Icon(Icons.fast_forward_rounded)
                      : const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.fast_forward_rounded),
                        ),
                ),
              ),
            );
          },
        ));
  }
}
