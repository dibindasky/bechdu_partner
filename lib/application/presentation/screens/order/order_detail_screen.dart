import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_price_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_top_potion.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/tab_bar_order_detail.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Order 11250',
        style: textHeadBoldBig2,
      )),
      backgroundColor: kWhite,
      body: Stack(
        children: [
          ClipPath(
            clipper: VerticalCurvesClipper(),
            child: ColoredBox(
              color: kBluelight,
              child: SizedBox(width: sWidth, height: sHeight * 1.5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [OrderDetailTopPart(), TabBarOrderDetail()],
            ),
          ),
          // need to add slide to top animation on requote
          // const RequotePriceSession(),
        ],
      ),
    );
  }
}
