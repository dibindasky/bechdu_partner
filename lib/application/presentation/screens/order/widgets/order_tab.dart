import 'package:bechdu_partner/application/presentation/screens/order/widgets/tab_bar_order_detail.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class TabBarOrder extends StatefulWidget {
  const TabBarOrder({
    super.key,
  });

  @override
  State<TabBarOrder> createState() => _TabBarOrderState();
}

class _TabBarOrderState extends State<TabBarOrder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sWidth * 0.1,
      width: sWidth,
      child: ValueListenableBuilder(
          valueListenable: orderTabNotifier,
          builder: (context, tab, _) {
            return Stack(
              children: [
                ClipRRect(
                    borderRadius: kRadius5,
                    child: ColoredBox(
                      color: kBluePrimary,
                      child: SizedBox(
                        height: sWidth * 0.1,
                        width: sWidth,
                      ),
                    )),
                AnimatedAlign(
                  duration: const Duration(milliseconds: 500),
                  alignment: tab == OrderTab.pickup
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: kRadius5,
                    child: ColoredBox(
                      color: kGreenPrimary,
                      child: SizedBox(
                        height: sWidth * 0.1,
                        width: sWidth / 2 - 20,
                      ),
                    ),
                  ),
                ),
                Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => changeTab(tab: OrderTab.pickup),
                        child: Text(
                          'Pickup Details',
                          style: textHeadBoldBig.copyWith(
                              color: OrderTab.pickup == orderTabNotifier.value
                                  ? kWhite
                                  : kGreyLight),
                        ),
                      ),
                      InkWell(
                        onTap: () => changeTab(tab: OrderTab.device),
                        child: Text(
                          'Mobile Details',
                          style: textHeadBoldBig.copyWith(
                              color: OrderTab.device == orderTabNotifier.value
                                  ? kWhite
                                  : kGreyLight),
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }

  changeTab({required OrderTab tab}) {
    if (tab != orderTabNotifier.value) {
      orderTabNotifier.value = tab;
    }
    orderTabNotifier.notifyListeners();
  }
}
