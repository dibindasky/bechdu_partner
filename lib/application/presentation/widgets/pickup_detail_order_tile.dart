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
                title: BlurMaker(
                  show: isBlurred,
                  child: Wrap(
                    children: [
                      Text(isUser ? 'Device Owner  ' :name==''?'Pickup ( Not Assigned )': 'Pickup partner  ',
                          style: textHeadRegular1),
                      Text(name, style: textHeadBold1),
                    ],
                  ),
                ),
                trailing: isBlurred
                    ? null
                    : isUser
                        ? _circleIconMaker(
                            icon: iconPhone,
                            onTap: () {
                              OpenLauncherFeature.launchPhone(phone: phone);
                            })
                        : null,
              ),
              ListTile(
                leading: SizedBox(
                    height: 25, width: 25, child: Image.asset(iconPickHand)),
                title: BlurMaker(
                    show: isBlurred,
                    child: Text('Pickup Location ', style: textHeadRegular1)),
                subtitle: BlurMaker(
                  show: isBlurred,
                  child: Text(address, style: textHeadBold1),
                ),
                trailing: isBlurred
                    ? kEmpty
                    : _circleIconMaker(
                        icon: iconLocation,
                        // quarterTurns: 1,
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

  Widget _circleIconMaker({required String icon, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: sWidth * 0.10,
        height: sWidth * 0.10,
        decoration: BoxDecoration(
          color: kGreyLight.withOpacity(0.3),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(icon),
        ),
      ),
    );
  }
}
