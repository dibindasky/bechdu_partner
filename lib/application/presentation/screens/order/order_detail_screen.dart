import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/blurred_order_details.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_details_with_out_blurrer.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({super.key, required this.orderDetail});

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (orderDetail.status != 'new') {
        context
            .read<OrdersBloc>()
            .add(OrdersEvent.getOrderDetail(orderId: orderDetail.id!));
      }
      if (partner) {
        context
            .read<PickupPartnerBloc>()
            .add(const PickupPartnerEvent.getPickupPartners());
      }
    });
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        OrderDetail orderDetail = this.orderDetail.status != 'new'
            ? state.orderDetail ?? OrderDetail()
            : this.orderDetail;
        return Scaffold(
          appBar: AppBar(
              title: Text(
            state.isLoading ? 'BECHDU' : state.orderDetail?.orderId ?? 'BECHDU',
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
              (state.isLoading || state.orderDetail == null) &&
                      this.orderDetail.status != 'new'
                  ? const Center(
                      child: CircularProgressIndicator(color: kBluePrimary))
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child:
                          BlocConsumer<PickupPartnerBloc, PickupPartnerState>(
                        listenWhen: (previous, current) =>
                            previous.assigningOrderLoader &&
                            (current.orderAssigned || current.orderDeAssigned),
                        listener: (context, state) {
                          if (state.message != null) {
                            showSnackBar(
                                context: context,
                                message: state.message!,
                                color: kGreenPrimary);
                          }
                          if (state.popOrderScreen) {
                            Navigator.pushNamedAndRemoveUntil(
                                context,
                                partner ? Routes.bottomBar : Routes.homePage,
                                (route) => false);
                          }
                          if (state.orderAssigned || state.orderDeAssigned) {
                            Navigator.pushReplacementNamed(
                                context, Routes.orderScreen,
                                arguments: orderDetail);
                          }
                        },
                        builder: (context, state) {
                          return BlocConsumer<OrdersBloc, OrdersState>(
                            listener: (context, state) {
                              if (state.message != null) {
                                showSnackBar(
                                    context: context,
                                    message: state.message!,
                                    color: state.acceptOrderError
                                        ? kRed
                                        : kGreenPrimary);
                              }
                              if (state.popOrderScreen) {
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    partner
                                        ? Routes.bottomBar
                                        : Routes.homePage,
                                    (route) => false);
                              }
                              if (state.acceptOrderError || state.cancelOrder) {
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    partner
                                        ? Routes.bottomBar
                                        : Routes.homePage,
                                    (route) => false);
                              }
                              if (state.acceptOrder) {
                                var orderModel =
                                    orderDetail.copyWith(status: 'processing');
                                Navigator.pushReplacementNamed(
                                    context, Routes.orderScreen,
                                    arguments: orderModel);
                                context.read<PickupPartnerBloc>().add(
                                    const PickupPartnerEvent
                                        .getPartnerProfile());
                                context.read<TranscationBloc>().add(
                                    const TranscationEvent
                                        .getDebitedTranscations(call: true));
                              }
                            },
                            builder: (context, state) {
                              if (state.acceptOrderLoading) {
                                return const Center(
                                    child: CircularProgressIndicator(
                                        color: kGreenPrimary));
                              }
                              return orderDetail.status == 'new'
                                  ? BlurredOrderDetails(
                                      orderDetail: orderDetail)
                                  : OrderDetailWithoutBlur(
                                      orderDetail: orderDetail);
                            },
                          );
                        },
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
