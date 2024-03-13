import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/complete_order_model.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/device_info.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<FormState> completeKey = GlobalKey<FormState>();

class ScreenCompleteOrder extends StatelessWidget {
  const ScreenCompleteOrder({super.key, required this.orderDetail});

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(orderDetail.orderId ?? '', style: textHeadBoldBig2),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: completeKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: kWhite,
                    radius: sWidth * 0.20,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.network(
                          orderDetail.productDetails?.image ?? ''),
                    ),
                  ),
                ),
                kHeight10,
                Text('Final price', style: textHeadRegular2),
                CustomTextFormField(
                  keyboardType: TextInputType.number,
                  validate: Validate.notNull,
                  controller: context.read<OrdersBloc>().finalPriceController,
                  hintText: 'Final price',
                ),
                kHeight10,
                Text('Imei Number', style: textHeadRegular2),
                CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validate: Validate.notNull,
                  controller: context.read<OrdersBloc>().imeiNumberController,
                  hintText: 'Imei Number',
                ),
                kHeight10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<OrdersBloc, OrdersState>(
                      buildWhen: (previous, current) =>
                          previous.idCard != current.idCard ||
                          previous.orderCompletionError !=
                              current.orderCompletionError,
                      builder: (context, state) {
                        return Expanded(
                            child: InkWell(
                          onTap: () => context
                              .read<OrdersBloc>()
                              .add(const OrdersEvent.addIdCardImage()),
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: state.orderCompletionError &&
                                              state.idCard == null
                                          ? kRedDark
                                          : kGreyLight),
                                  borderRadius: kRadius10),
                              child: Column(
                                children: [
                                  Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Id Card', style: textHeadRegular2),
                                      kWidth10,
                                      const Icon(Icons.camera_outlined)
                                    ],
                                  )),
                                  state.idCard != null ? kHeight10 : kEmpty,
                                  state.idCard != null
                                      ? AspectRatio(
                                          aspectRatio: 1,
                                          child: Stack(
                                            children: [
                                              Image.file(
                                                  state.idCard!.fileImage,
                                                  fit: BoxFit.contain),
                                              Positioned(
                                                top: 3,
                                                right: 3,
                                                child: InkWell(
                                                    onTap: () => context
                                                        .read<OrdersBloc>()
                                                        .add(const OrdersEvent
                                                            .removeIdCardImage()),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          kBluePrimary,
                                                      child: Icon(Icons.delete,
                                                          color: kWhite),
                                                    )),
                                              )
                                            ],
                                          ))
                                      : kEmpty
                                ],
                              )),
                        ));
                      },
                    ),
                    kWidth10,
                    BlocBuilder<OrdersBloc, OrdersState>(
                      buildWhen: (previous, current) =>
                          previous.deviceBill != current.deviceBill ||
                          previous.orderCompletionError !=
                              current.orderCompletionError,
                      builder: (context, state) {
                        return Expanded(
                            child: InkWell(
                          onTap: () => context
                              .read<OrdersBloc>()
                              .add(const OrdersEvent.addDiviceBill()),
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: state.orderCompletionError &&
                                              state.deviceBill == null
                                          ? kRedDark
                                          : kGreyLight),
                                  borderRadius: kRadius10),
                              child: Column(
                                children: [
                                  Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Device bill',
                                          style: textHeadRegular2),
                                      kWidth10,
                                      const Icon(Icons.camera_outlined)
                                    ],
                                  )),
                                  state.deviceBill != null ? kHeight10 : kEmpty,
                                  state.deviceBill != null
                                      ? AspectRatio(
                                          aspectRatio: 1,
                                          child: Stack(
                                            children: [
                                              Image.file(
                                                  state.deviceBill!.fileImage,
                                                  fit: BoxFit.contain),
                                              Positioned(
                                                top: 3,
                                                right: 3,
                                                child: InkWell(
                                                  onTap: () => context
                                                      .read<OrdersBloc>()
                                                      .add(const OrdersEvent
                                                          .removeDiviceBill()),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        kBluePrimary,
                                                    child: Icon(Icons.delete,
                                                        color: kWhite),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                      : kEmpty
                                ],
                              )),
                        ));
                      },
                    )
                  ],
                ),
                kHeight10,
                BlocBuilder<OrdersBloc, OrdersState>(
                  buildWhen: (previous, current) =>
                      previous.deviceImages != current.deviceImages ||
                      previous.orderCompletionError !=
                          current.orderCompletionError,
                  builder: (context, state) {
                    return InkWell(
                      onTap: () => context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.addDeviceImages()),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: state.orderCompletionError &&
                                        state.deviceImages == null
                                    ? kRedDark
                                    : kGreyLight),
                            borderRadius: kRadius10),
                        child: Column(
                          children: [
                            Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Device images', style: textHeadRegular2),
                                kWidth10,
                                const Icon(Icons.camera_outlined)
                              ],
                            )),
                            state.deviceImages != null &&
                                    state.deviceImages!.isNotEmpty
                                ? kHeight10
                                : kEmpty,
                            state.deviceImages != null &&
                                    state.deviceImages!.isNotEmpty
                                ? AspectRatio(
                                    aspectRatio: 1 / .5,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          kWidth20,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.deviceImages!.length,
                                      itemBuilder: (context, index) => Stack(
                                        children: [
                                          Image.file(state
                                              .deviceImages![index].fileImage),
                                          Positioned(
                                            top: 3,
                                            right: 3,
                                            child: InkWell(
                                              onTap: () => context
                                                  .read<OrdersBloc>()
                                                  .add(OrdersEvent
                                                      .removeDeviceImage(
                                                          index: index)),
                                              child: const CircleAvatar(
                                                backgroundColor: kBluePrimary,
                                                child: Icon(Icons.delete,
                                                    color: kWhite),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                : kEmpty
                          ],
                        ),
                      ),
                    );
                  },
                ),
                kHeight20,
                BlocConsumer<OrdersBloc, OrdersState>(
                  listenWhen: (previous, current) => current.orderCompleted,
                  listener: (context, state) {
                    if (state.message != null) {
                      showSnackBar(
                          context: context,
                          message: state.message!,
                          color: kGreenPrimary);
                    }
                    Navigator.pushNamedAndRemoveUntil(
                        context,
                        partner ? Routes.bottomBar : Routes.homePage,
                        (route) => false);
                  },
                  builder: (context, state) {
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
                            context.read<OrdersBloc>().add(
                                const OrdersEvent.checkErrorCompleteOrder());
                          } else {
                            print('in complete order ui call');
                            context.read<OrdersBloc>().add(
                                OrdersEvent.completeOrder(
                                    orderId: orderDetail.id!,
                                    completeOrderModel: CompleteOrderModel(
                                        deviceInfo: DeviceInfo(
                                            deviceBill:
                                                state.deviceBill!.base64Image,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
