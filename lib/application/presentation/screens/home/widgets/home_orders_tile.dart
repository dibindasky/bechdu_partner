import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/phone_detail_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';

class OrdersListTileHome extends StatelessWidget {
  const OrdersListTileHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, Routes.orderScreen),
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kBluelight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
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
                  kHeight10,
                  const Divider(),
                  const PickUpDetailOrderTile(),
                  kHeight10,
                  const PhoneDetailTile()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

