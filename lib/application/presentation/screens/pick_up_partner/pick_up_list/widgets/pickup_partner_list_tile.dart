import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class PickupPartnerListTile extends StatelessWidget {
  const PickupPartnerListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.pickUpProfilePage),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage(phoneImage),
        ),
        title: Text(
          'Name',
          style: textHeadSemiBold1,
        ),
        subtitle: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                '25 Orders',
                style: textHeadSemiBold1.copyWith(color: kGreyLight),
              ),
            ),
            kWidth10,
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle_sharp,
                    color: klightGreen,
                    size: sWidth * 0.03,
                  ),
                  kWidth10,
                  Text(
                    '25 Orders',
                    style: textHeadSemiBold1.copyWith(color: kGreyLight),
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: const RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.more_vert_rounded,
            color: kGreyLight,
          ),
        ),
      ),
    );
  }
}
