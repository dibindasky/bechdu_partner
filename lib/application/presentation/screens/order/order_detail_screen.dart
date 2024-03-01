import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/device_detail_orders_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_image_and_price_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_top_potion.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/partner_detal_tile_order_detail.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/slide_to_accept_order_slider.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/pickup_detail_order_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail(
      {super.key, required this.newOrder, required this.detail});

  final bool newOrder;
  final bool detail;

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<OrdersBloc, OrdersState>(
              builder: (context, state) {
                return newOrder
                    ? const Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(children: [
                              OrdersDetailImageAndPriceSession(),
                              PickUpDetailOrderTile(isBlurred: true),
                              kHeight10,
                              OrderDetailDiviceDetailsSession(isBlurred: true)
                            ]),
                          ),
                          SliderOrderAccepting()
                        ],
                      )
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            const OrdersDetailImageAndPriceSession(),
                            detail ? const OrderDetailTopPart() : kEmpty,
                            kHeight20,
                            const PartnerDetailTile(),
                            kHeight20,
                            const PickUpDetailOrderTile(isBlurred: false),
                            kHeight10,
                            const OrderDetailDiviceDetailsSession(
                                isBlurred: false)
                          ],
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
