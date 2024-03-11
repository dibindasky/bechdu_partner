import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_answer_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_tabs.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';

class RequotePriceSession extends StatelessWidget {
  const RequotePriceSession({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Material(elevation: 10, child: CustomCircleShape()),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: kWhite,
              radius: sWidth * 0.20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: orderDetail.productDetails?.image != null
                    ? Image.network(orderDetail.productDetails!.image!)
                    : const Icon(Icons.image),
              ),
            ),
            kHeight30,
            const RequoteTabs(),
            kHeight20,
            const RequoteAnswerSession()
          ],
        )
      ],
    );
  }
}

class CustomCircleShape extends StatelessWidget {
  const CustomCircleShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: VerticalCurvesClipper(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: sWidth,
          height: sHeight,
          decoration: const BoxDecoration(
            color: kWhite,
            boxShadow: [
              BoxShadow(
                color: kBlack,
                blurRadius: 5.0,
                offset: Offset(-5.0, -5.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
