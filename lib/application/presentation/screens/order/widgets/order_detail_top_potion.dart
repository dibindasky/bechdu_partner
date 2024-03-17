import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialog_cancel_order.dart';
import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialoge_reschedule.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/requote_price_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_custom_buttom.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailTopPart extends StatelessWidget {
  const OrderDetailTopPart({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrdersCustomButton(
                  text: 'Cancel Order',
                  image: iconCancel,
                  onTap: () {
                    showDialogeCancel(context, orderDetail.id);
                  }),
              kWidth5,
              OrdersCustomButton(
                  text: ' Reschedule ',
                  image: iconShedule,
                  onTap: () {
                    // Navigator.pushNamed(context, Routes.reshedulePage);
                    context
                        .read<RequoteBloc>()
                        .add(const RequoteEvent.getDateAndTime());
                    showDialogeReschedule(context, orderDetail.id!);
                  }),
              kWidth5,
              BlocConsumer<RequoteBloc, RequoteState>(
                listenWhen: (previous, current) =>
                    previous.questionLoading && current.sections != null,
                listener: (context, state) {
                  // on requote price
                  if (state.sections!.isNotEmpty) {
                    showBottomSheet(
                      clipBehavior: Clip.none,
                      backgroundColor: kWhite,
                      context: context,
                      builder: (context) => BottomSheet(
                        backgroundColor: kWhite,
                        onClosing: () {},
                        builder: (context) =>
                            RequotePriceSession(orderDetail: orderDetail),
                      ),
                    );
                  }
                },
                builder: (context, state) => state.questionLoading
                    ? const Expanded(
                        child: Center(
                            child: CircularProgressIndicator(
                          color: kGreenPrimary,
                        )),
                      )
                    : OrdersCustomButton(
                        text: 'Requote Price',
                        image: iconRedo,
                        onTap: () {
                          context.read<RequoteBloc>().add(
                              RequoteEvent.getQuestions(slug: orderDetail.productDetails!.slug!,
                                  category:
                                      orderDetail.productDetails!.category!));
                        },
                      ),
              ),
            ],
          ),
          kHeight10,
          OrderCustomButtonBottom(
              text: 'Complete',
              image: iconCompleteCheck,
              onTap: () {
                Navigator.pushNamed(context, Routes.completeOrderPage,
                    arguments: orderDetail);
              })
        ],
      ),
    );
  }
}
