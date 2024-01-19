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
      body: const Center(
        child: Text('ScreenPickUpPartnerProfile'),
      ),
    );
  }
}
