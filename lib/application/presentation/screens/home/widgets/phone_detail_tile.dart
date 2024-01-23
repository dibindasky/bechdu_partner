import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class PhoneDetailTile extends StatelessWidget {
  const PhoneDetailTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: ColoredBox(
        color: kWhite,
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: sWidth * 0.15,
                width: sWidth * 0.20,
                child: FittedBox(
                    child: Image.asset(
                  phoneImage,
                  fit: BoxFit.cover,
                )),
              ),
              kWidth20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Iphone 11',
                    style: textHeadRegular1,
                  ),
                  Text(
                    '₹ 11,999',
                    style: textHeadRegular1.copyWith(
                        color: kGreyLight),
                  ),
                  Row(
                    children: [
                      Text('15', style: textHeadBold1),
                      kWidth5,
                      CircleAvatar(
                        radius: sWidth * 0.02,
                        backgroundColor: kWhite,
                        backgroundImage:
                            const AssetImage(iconNottoCoin),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PickUpDetailOrderTile extends StatelessWidget {
  const PickUpDetailOrderTile({
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
                Text('Pickup Partner', style: textHeadRegular1),
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
                  icon: Icons.navigation_outlined, quarterTurns: 1)),
          ListTile(
            leading: const Icon(
              Icons.alarm_rounded,
              color: kGreenPrimary,
            ),
            title: Text('Pickup Time', style: textHeadRegular1),
            subtitle: Text('04:30 12/01/24', style: textHeadBold1),
          )
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
