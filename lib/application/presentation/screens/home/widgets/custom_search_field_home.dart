import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchFieldHomePage extends StatelessWidget {
  const CustomSearchFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        return TextField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          controller: context.read<OrdersBloc>().searchController,
          onChanged: (value) {
            if (!partner || state.orderTab == 1) {
              context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.getPartnerOrders(call: true));
            } else if (state.orderTab == 0) {
              context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.getNewOrder(call: true));
            }
          },
          decoration: InputDecoration(
            hintText: 'Search for order here',
            hintStyle: textHeadRegular1.copyWith(color: kBluePrimary),
            suffixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.only(left: 10),
            border: OutlineInputBorder(
              borderRadius: kRadius5,
              borderSide: const BorderSide(color: kBluePrimary, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: kRadius5,
              borderSide: const BorderSide(color: kGreenPrimary),
            ),
          ),
        );
      },
    );
  }
}
