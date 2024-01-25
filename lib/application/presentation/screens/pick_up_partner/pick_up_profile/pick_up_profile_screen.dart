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
            CircleAvatar(radius: sWidth * 0.21,backgroundColor: kGreenPrimary,
              child: CircleAvatar(
                radius: sWidth * 0.20,
                backgroundColor: kBluePrimary,
                child: Text('KA',style: textHeadBoldBig2.copyWith(color: kWhite,fontSize: sWidth * 0.20),),
              ),
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
                    titleTextStyle: textHeadMedium1.copyWith(fontWeight: FontWeight.w600),
                    subtitleTextStyle:
                        textHeadMedium1.copyWith(color: kGreyLight),
                    trailing: Wrap(
                      children: [
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
                    titleTextStyle: textHeadMedium1.copyWith(fontWeight: FontWeight.w600),
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
                    title: Text('Address'),
                    subtitle: const Text('#23, jayanagar 9th block, bangalore.'),
                    titleTextStyle: textHeadMedium1.copyWith(fontWeight: FontWeight.w600),
                    subtitleTextStyle:
                        textHeadMedium1.copyWith(color: kGreyLight),
                  ),
                ],
              ),
            ),
          ],
        ),);
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
          child: Icon(icon,color: kGreyDark),
        ),
      ),
    );
  }
}
