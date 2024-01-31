import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_blur_maker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class PickUpDetailOrderTile extends StatelessWidget {
  const PickUpDetailOrderTile(
      {super.key, this.isBlurred = false, this.isUser = true});

  final bool isBlurred;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Material(
        elevation: 5,
        borderRadius: kRadius5,
        child: ClipRRect(
          borderRadius: kRadius10,
          child: ColoredBox(
            color: kWhite,
            child: Column(children: [
              kHeight10,
              Text('Pickup Details', style: textHeadBoldBig),
              kHeight10,
              ListTile(
                leading: const Icon(
                  Icons.person_2_outlined,
                  color: kGreenPrimary,
                ),
                title: BlurerMaker(
                  show: isBlurred,
                  child: Wrap(
                    children: [
                      Text(isUser ? 'Device Owner  ' : 'Pickup partner  ',
                          style: textHeadRegular1),
                      Text(isUser ? '00000 00000' : 'Aman Sharma',
                          style: textHeadBold1),
                    ],
                  ),
                ),
                trailing: _circleIconMaker(
                    icon: Icons.phone,
                    onTap: () {
                      url_launcher.launchUrl(Uri.parse("tel://0000000000"));
                    }),
              ),
              ListTile(
                leading: SizedBox(
                    height: 25, width: 25, child: Image.asset(iconPickHand)),
                title: BlurerMaker(
                    show: isBlurred,
                    child: Text('Pickup Location ', style: textHeadRegular1)),
                subtitle: BlurerMaker(
                  show: isBlurred,
                  child: Text(
                      'Nikhita Stores, 201/B, Nirant Apts, Andheri East 400069',
                      style: textHeadBold1),
                ),
                trailing: _circleIconMaker(
                  icon: Icons.navigation_outlined,
                  quarterTurns: 1,
                  onTap: () {
                    try {
                      url_launcher.launchUrl(Uri.parse(urlMapTest));
                    } catch (e) {
                      print('cannot launch url');
                      print(e);
                    }
                  },
                ),
              ),
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
        ),
      ),
    );
  }

  Widget _circleIconMaker(
      {required IconData icon, int quarterTurns = 0, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
          backgroundColor: kGreyLight.withOpacity(0.3),
          child: RotatedBox(
              quarterTurns: quarterTurns,
              child: Icon(icon, color: kGreenPrimary))),
    );
  }
}
