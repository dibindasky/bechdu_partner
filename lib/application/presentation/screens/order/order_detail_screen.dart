import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/device_detail_orders_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_image_and_price_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_top_potion.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/partner_detal_tile_order_detail.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/slide_to_accept_order_slider.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/application/presentation/widgets/pickup_detail_order_tile.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({super.key, required this.orderDetail});

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        orderDetail.orderId ?? '------',
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
            child: BlocConsumer<OrdersBloc, OrdersState>(
              listener: (context, state) {
                if (state.message != null) {
                  showSnackBar(
                      context: context,
                      message: state.message!,
                      color: state.acceptOrderError ? kRed : kGreenPrimary);
                }
                if (state.acceptOrderError) {
                  Navigator.of(context).pop();
                }
                if (state.acceptOrder) {
                  var orderModel = orderDetail.copyWith(status: 'processing');
                  Navigator.pushReplacementNamed(context, Routes.orderScreen,
                      arguments: orderModel);
                }
              },
              builder: (context, state) {
                if (state.acceptOrderLoading) {
                  return const Center(
                      child: CircularProgressIndicator(color: kGreenPrimary));
                }
                return orderDetail.status == 'new'
                    ? BlurredOrderDetails(orderDetail: orderDetail)
                    : OrderDetailWithoutBlur(orderDetail: orderDetail);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetailWithoutBlur extends StatelessWidget {
  const OrderDetailWithoutBlur({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OrdersDetailImageAndPriceSession(
              coin: orderDetail.coins ?? '--',
              deviceName: orderDetail.productDetails?.name ?? '----',
              image: orderDetail.productDetails?.image ?? '',
              price: orderDetail.productDetails?.price ?? '--'),
          const OrderDetailTopPart(),
          kHeight20,
          PartnerDetailTile(partner: orderDetail.partner),
          kHeight20,
          PickUpDetailOrderTile(
            isBlurred: false,
            isUser: true,
            name: orderDetail.user?.name ??
                '',
            dateTime:
                '${orderDetail.pickUpDetails?.time ?? '--,--'} ${orderDetail.pickUpDetails?.date ?? '--/--/--'}',
            address: orderDetail.user?.address ?? '----- ------- -------',
            phone: orderDetail.user?.phone ?? '',
          ),
          kHeight10,
          OrderDetailDiviceDetailsSession(
              isBlurred: false, productDetails: orderDetail.productDetails)
        ],
      ),
    );
  }
}

class BlurredOrderDetails extends StatelessWidget {
  const BlurredOrderDetails({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(children: [
            OrdersDetailImageAndPriceSession(
                coin: orderDetail.coins ?? '--',
                deviceName: orderDetail.productDetails?.name ?? '----',
                image: orderDetail.productDetails?.image ?? '',
                price: orderDetail.productDetails?.price ?? '--'),
            PickUpDetailOrderTile(
              isBlurred: true,
              isUser: true,
              name: orderDetail.partner?.pickUpPersonName ??
                  orderDetail.partner?.partnerName ??
                  '',
              dateTime:
                  '${orderDetail.pickUpDetails?.time ?? '--,--'} ${orderDetail.pickUpDetails?.date ?? '--/--/--'}',
              address: orderDetail.user?.address ?? '----- ------- -------',
              phone: orderDetail.user?.phone ?? '',
            ),
            kHeight10,
            OrderDetailDiviceDetailsSession(
                isBlurred: true, productDetails: orderDetail.productDetails)
          ]),
        ),
        SliderOrderAccepting(orderId: orderDetail.id!)
      ],
    );
  }
}
