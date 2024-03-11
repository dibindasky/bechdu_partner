import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_blur_maker.dart';
import 'package:bechdu_partner/data/feature/url_launcher_service.dart';
import 'package:flutter/material.dart';

class PickUpDetailOrderTile extends StatelessWidget {
  const PickUpDetailOrderTile({
    super.key,
    this.isBlurred = false,
    required this.name,
    required this.address,
    required this.phone,
    required this.dateTime,
    required this.isUser,
  });

  final bool isBlurred;
  final bool isUser;
  final String name;
  final String address;
  final String phone;
  final String dateTime;

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
                      Text(name, style: textHeadBold1),
                    ],
                  ),
                ),
                trailing: isBlurred
                    ? null
                    : _circleIconMaker(
                        icon: Icons.phone,
                        onTap: () {
                          OpenLauncherFeature.launchPhone(phone: phone);
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
                  child: Text(address, style: textHeadBold1),
                ),
                trailing: isBlurred
                    ? kEmpty
                    : _circleIconMaker(
                        icon: Icons.navigation_outlined,
                        quarterTurns: 1,
                        onTap: () {
                          OpenLauncherFeature.launchMap(
                              address: address, context: context);
                        },
                      ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.alarm_rounded,
                  color: kGreenPrimary,
                ),
                title: Text('Pickup Time', style: textHeadRegular1),
                subtitle: Text(dateTime, style: textHeadBold1),
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
