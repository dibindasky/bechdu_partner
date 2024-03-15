import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/animations/shriking_animation.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings', style: textHeadBoldBig2),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              kHeight20,
              AnimatedGrowShrinkContainer(child: Image.asset(iconBechdu)),
              kHeight50,
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.person),
                ),
                title: Text('Profile', style: textHeadRegular2),
                onTap: () => Navigator.pushNamed(context, Routes.profilePage),
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.privacy_tip),
                ),
                title: Text('Privacy Poicy', style: textHeadRegular2),
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.terminal_sharp),
                ),
                title: Text('Terms And Conditions', style: textHeadRegular2),
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.mobile_screen_share_sharp),
                ),
                title: Text('Share', style: textHeadRegular2),
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.person_off_outlined),
                ),
                title: Text('Delete account', style: textHeadRegular2),
              ),
              const Divider(),
              kHeight50,
              Text('version 1.0.0',
                  style: textHeadMedium1.copyWith(color: kGreyLight))
            ],
          )),
        ));
  }
}
