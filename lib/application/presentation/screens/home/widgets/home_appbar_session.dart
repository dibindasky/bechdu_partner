import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/custom_search_field_home.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<PickupPartnerBloc>()
          .add(const PickupPartnerEvent.getPartnerProfile());
    });
    return SafeArea(
      child: Column(
        children: [
          kHeight10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Orders',
                      style: textHeadBoldBig2,
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, Routes.notificationPage),
                        child: const Icon(Icons.notifications,
                            color: kBluePrimary)),
                    kWidth10,
                    partner
                        ? InkWell(
                            onTap: () =>
                                Navigator.pushNamed(context, Routes.pointsPage),
                            child: BlocBuilder<PickupPartnerBloc,
                                PickupPartnerState>(
                              builder: (context, state) {
                                return ClipRRect(
                                  borderRadius: kRadius50,
                                  child: ColoredBox(
                                    color: kBluePrimary,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            state.partnerProfile?.coins ?? '0',
                                            style: textHeadBoldBig2.copyWith(
                                                color: kWhite),
                                          ),
                                          kWidth5,
                                          CircleAvatar(
                                            radius: sWidth * 0.04,
                                            backgroundColor: kBluePrimary,
                                            backgroundImage:
                                                const AssetImage(iconNottoCoin),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.settingsPage);
                            },
                            icon:
                                const Icon(Icons.settings, color: kBluePrimary))
                  ],
                ),
                kHeight20,
                Row(
                  children: [
                    const Expanded(
                      flex: 8,
                      child: CustomSearchFieldHomePage(),
                    ),
                    partner ? kWidth20 : kEmpty,
                    partner
                        ? Expanded(
                            child: PopupMenuButton(
                                color: kWhite,
                                icon: const Icon(Icons.filter_alt),
                                itemBuilder: (context) => ([
                                      PopupMenuItem(
                                          onTap: () {
                                            context.read<OrdersBloc>().add(
                                                const OrdersEvent.changeTab(
                                                    tab: 0));
                                          },
                                          child: const Text('New Orders')),
                                      PopupMenuItem(
                                          onTap: () {
                                            context.read<OrdersBloc>().add(
                                                const OrdersEvent.changeTab(
                                                    tab: 1));
                                          },
                                          child: const Text('Accepted Orders'))
                                    ])),
                          )
                        : kEmpty
                  ],
                )
              ],
            ),
          ),
          kHeight10,
          partner
              ? BlocBuilder<OrdersBloc, OrdersState>(
                  builder: (context, state) {
                    return InkWell(
                      // onTap: () => Navigator.pushNamed(context, Routes.orderScreen,
                      //     arguments: <String, bool>{
                      //       'newOrder': true,
                      //     }),
                      child: ColoredBox(
                        color: kBluePrimary,
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              children: [
                                kWidth20,
                                Text(
                                  'You Have A New Order',
                                  style:
                                      textHeadBoldBig.copyWith(color: kWhite),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: kRadius50,
                                      border: Border.all(color: kWhite)),
                                  child: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: kWhite,
                                    size: 15,
                                  ),
                                ),
                                kWidth20,
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              : kEmpty
        ],
      ),
    );
  }
}
