import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
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
        child: Column(
          children: [
            CircleAvatar(
              radius: sWidth * 0.16,
              backgroundColor: kGreenPrimary,
              child: CircleAvatar(
                radius: sWidth * 0.15,
                backgroundColor: kBluePrimary,
                child: Text(
                  'JG',
                  style: textHeadBoldBig2.copyWith(
                      color: kWhite, fontSize: sWidth * 0.15),
                ),
              ),
            ),
            kHeight40,
            const UserDetailTile(headline: 'Username',text: 'Jaisai gopisetty'),
            const UserDetailTile(headline: 'Email',text: 'Jaisai@gmail.com'),
            const UserDetailTile(headline: 'Mobile Number',text: '0000 000 000'),
            const Spacer(),
            AuthCustomButtom(onTap: (){}, text: 'Save', backgroundColor: kGreenPrimary),
            kHeight50
          ],
        ),
      ),
    );
  }
}

class UserDetailTile extends StatelessWidget {
  const UserDetailTile({
    super.key, required this.headline, required this.text,this.onTap,
  });

  final String headline;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headline,
            style: textHeadMedium1.copyWith(color: kGreyLight)),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(' $text', style: textHeadBoldBig),
            InkWell(onTap: onTap,
              child: Text(
                'Change  ',
                style: textHeadRegular1.copyWith(
                    color: kBlue, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        const Divider(color: kBlack),
        kHeight20,
      ],
    );
  }
}
