import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/complete_order_screen.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/complete_order_model.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/device_info.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompleteSubmitButton extends StatelessWidget {
  const CompleteSubmitButton({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersBloc, OrdersState>(
      listenWhen: (previous, current) => current.orderCompleted,
      listener: (context, state) {
        if (state.message != null) {
          showSnackBar(
              context: context, message: state.message!, color: kGreenPrimary);
        }
        Navigator.pushNamedAndRemoveUntil(context,
            partner ? Routes.bottomBar : Routes.homePage, (route) => false);
      },
      builder: (context, state) {
        if (state.completeOrderLoading) {
          return const Center(
              child: CircularProgressIndicator(color: kOrangePrimary));
        }
        return AuthCustomButtom(
          onTap: () {
            if (completeKey.currentState!.validate() &&
                !state.orderCompletionError) {
              if (state.idCard == null ||
                  state.deviceBill == null ||
                  state.deviceImages == null) {
                showSnackBar(
                    context: context,
                    message:
                        'add ${state.idCard == null ? 'idcard, ' : ''}${state.deviceBill == null ? 'device bill, ' : ''}${state.deviceImages == null ? 'device images ' : ''}to continue',
                    color: kRed);
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.checkErrorCompleteOrder());
              } else {
                print('in complete order ui call');
                context.read<OrdersBloc>().add(OrdersEvent.completeOrder(
                    orderId: orderDetail.id!,
                    completeOrderModel: CompleteOrderModel(
                        deviceInfo: DeviceInfo(
                            deviceBill: state.deviceBill!.base64Image,
                            idCard: state.idCard!.base64Image,
                            finalPrice: context
                                .read<OrdersBloc>()
                                .finalPriceController
                                .text
                                .trim(),
                            imeiNumber: context
                                .read<OrdersBloc>()
                                .imeiNumberController
                                .text
                                .trim(),
                            deviceImages: state.deviceImages!
                                .map((e) => e.base64Image)
                                .toList()))));
              }
            }
          },
          text: 'Complete',
          backgroundColor: kGreenPrimary,
        );
      },
    );
  }
}
