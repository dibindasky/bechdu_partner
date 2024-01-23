import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class PickUpDetailTile extends StatelessWidget {
  const PickUpDetailTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: ColoredBox(
        color: kWhite,
        child: Column(children: [
          ListTile(
            leading: const Icon(
              Icons.person_2_outlined,
              color: kGreenPrimary,
            ),
            title: Wrap(
              children: [
                Text('Pickup Partner  ', style: textHeadRegular1),
                Text('Aman Sharma', style: textHeadBold1),
              ],
            ),
            trailing: _circleIconMaker(icon: Icons.phone),
          ),
          ListTile(
            leading: const Icon(
              Icons.front_hand_outlined,
              color: kGreenPrimary,
            ),
            title: Text('Pickup Location ', style: textHeadRegular1),
            subtitle: Text(
                'Nikhita Stores, 201/B, Nirant Apts, Andheri East 400069',
                style: textHeadBold1),
            trailing: _circleIconMaker(
                icon: Icons.navigation_outlined, quarterTurns: 1),
          ),
        ]),
      ),
    );
  }

  CircleAvatar _circleIconMaker(
      {required IconData icon, int quarterTurns = 0}) {
    return CircleAvatar(
        backgroundColor: kGreyLight.withOpacity(0.3),
        child: RotatedBox(
            quarterTurns: quarterTurns,
            child: Icon(icon, color: kGreenPrimary)));
  }
}
