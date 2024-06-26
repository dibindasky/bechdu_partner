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
      if (orderDetail.notification) {
        context.read<OrdersBloc>().add(
            OrdersEvent.getOrderDetailNotification(orderId: orderDetail.id!));
      } else if (orderDetail.status != 'new') {
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
    return BlocConsumer<OrdersBloc, OrdersState>(
      listener: (context, state) {
        if (state.hasError &&
            state.message == "You can't perform this action") {
          showSnackBar(
              context: context,
              message: partner
                  ? 'Order has been accepted by another partner.'
                  : 'Order has been deassigned by partner',
              color: kRed);
          if (partner) {
            Navigator.pop(context);
          } else {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.homePage, (route) => false);
          }
        }
      },
      builder: (context, state) {
        OrderDetail orderDetail =
            this.orderDetail.notification || this.orderDetail.status != 'new'
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
                  // color: this.orderDetail.notification
                  //     ? kBluelight
                  //     : getStatusColor(this.orderDetail.status!),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1.5),
                ),
              ),
              (state.isLoading || state.orderDetail == null) &&
                      (this.orderDetail.status != 'new' ||
                          this.orderDetail.notification)
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
                              return orderDetail.status == 'new' ||
                                      orderDetail.notification
                                  // order details shown in blur for status new and canceled
                                  ? BlurredOrderDetails(
                                      orderDetail: orderDetail)
                                  // order details for status processing, resheduled and complete
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
