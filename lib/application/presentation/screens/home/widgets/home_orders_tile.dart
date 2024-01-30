import 'package:bechdu_partner/application/presentation/screens/home/widgets/phone_detail_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_expansion_tile.dart';
import 'package:bechdu_partner/application/presentation/widgets/pickup_detail_order_tile.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';

class OrdersListTileHome extends StatelessWidget {
  const OrdersListTileHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
      decoration: BoxDecoration(
          borderRadius: kRadius5,
          color: kBluelight,
          border: Border.all(color: kBlack)),
      child: CustomExpansionTile(
        title: Row(
          children: [
            kWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order No.',
                  style: textHeadMedium1,
                ),
                Text(
                  '#11250',
                  style: textHeadRegular1,
                )
              ],
            ),
            const Spacer(),
            const StatusColoredBox(
              color: kBluePrimary,
              text: 'Pickup Pending',
            ),
            kWidth10
          ],
        ),
        subTitle: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(30, (index) => const Text('_')),),
              kHeight5,
            const PhoneDetailTile(),
          ],
        ),
        children: const [PickUpDetailOrderTile(isUser: false)],
      ),
    );
  }
}
