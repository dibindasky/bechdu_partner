import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_list/widgets/custom_add_icon.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_list/widgets/pickup_partner_list_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenPickUpPartnersList extends StatelessWidget {
  const ScreenPickUpPartnersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pickup Partners',
          style: textHeadBoldBig2,
        ),
        actions: const [CustomAddIcon(), kWidth20],
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => ColoredBox(
          color: kGreyLight.withOpacity(0.5),
          child: const SizedBox(height: 1, width: double.infinity),
        ),
        itemBuilder: (context, index) => const PickupPartnerListTile(),
      ),
    );
  }
}
