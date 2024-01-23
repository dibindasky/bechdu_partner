import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenPickUpPartnerProfile extends StatelessWidget {
  const ScreenPickUpPartnerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Name', style: textHeadBoldBig2),
            actions: const [Icon(Icons.more_vert_rounded), kWidth20]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: sWidth * 0.20,
              backgroundImage: const AssetImage(phoneImage),
            ),
            kHeight10,
            Text(
              'Kumasi, Ghana',
              style: textHeadMedium1.copyWith(
                  fontSize: sWidth * 0.05, color: kGreyDark),
            ),
            Text(
              'kwame aston',
              style: textHeadMedium1.copyWith(fontSize: sWidth * 0.06),
            ),
            kHeight20,
            ColoredBox(
              color: kGreyLight.withOpacity(0.2),
              child: Column(
                children: [
                  ListTile(
                    leading: kWidth10,
                    title: const Text('Mobile'),
                    subtitle: const Text('+2332471729'),
                    titleTextStyle: textHeadBold1,
                    subtitleTextStyle:
                        textHeadMedium1.copyWith(color: kGreyLight),
                    trailing: Wrap(
                      children: [
                        CircleIconTrailingProfile(
                            icon: Icons.message, onTap: () {}),
                        kWidth10,
                        CircleIconTrailingProfile(
                            icon: Icons.phone, onTap: () {}),
                        kWidth20
                      ],
                    ),
                  ),
                  ListTile(
                    leading: kWidth10,
                    title: const Text('Email'),
                    subtitle: const Text('asamoahgodfred42@gmail.com'),
                    titleTextStyle: textHeadBold1,
                    subtitleTextStyle:
                        textHeadMedium1.copyWith(color: kGreyLight),
                    trailing: Wrap(
                      children: [
                        CircleIconTrailingProfile(
                            icon: Icons.mail, onTap: () {}),
                        kWidth20
                      ],
                    ),
                  ),
                  ListTile(
                    leading: kWidth10,
                    title: const Text('Group'),
                    subtitle: const Text('Uni Friends'),
                    titleTextStyle: textHeadBold1,
                    subtitleTextStyle:
                        textHeadMedium1.copyWith(color: kGreyLight),
                  ),
                ],
              ),
            ),
            kHeight20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: kRadius10,
                child: ColoredBox(
                  color: kBluePrimary,
                  child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Center(
                            child: Text('Assign Pickup',
                                style:
                                    textHeadBoldBig2.copyWith(color: kWhite))),
                      )),
                ),
              ),
            )
          ],
        ));
  }
}

class CircleIconTrailingProfile extends StatelessWidget {
  const CircleIconTrailingProfile({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 2,
        borderRadius: kRadius50,
        child: CircleAvatar(
          backgroundColor: kWhite,
          child: Icon(icon),
        ),
      ),
    );
  }
}
