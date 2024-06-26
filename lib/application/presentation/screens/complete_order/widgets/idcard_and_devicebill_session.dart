import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdCardAndDeviceBillSession extends StatelessWidget {
  const IdCardAndDeviceBillSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<OrdersBloc, OrdersState>(
          buildWhen: (previous, current) =>
              previous.idCard != current.idCard ||
              previous.orderCompletionError != current.orderCompletionError,
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
                          width:
                              state.orderCompletionError && state.idCard == null
                                  ? 2
                                  : 1,
                          color:
                              state.orderCompletionError && state.idCard == null
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
                          Icon(Icons.camera_outlined,
                              color: state.orderCompletionError &&
                                      state.idCard == null
                                  ? kRedDark
                                  : kBlack)
                        ],
                      )),
                      state.idCard != null ? kHeight10 : kEmpty,
                      state.idCard != null
                          ? AspectRatio(
                              aspectRatio: 1,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.pushNamed(
                                        context, Routes.imagePreviewPage,
                                        arguments:
                                            state.idCard!.fileImage.path),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.file(state.idCard!.fileImage,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                    top: 3,
                                    right: 3,
                                    child: InkWell(
                                      onTap: () => context
                                          .read<OrdersBloc>()
                                          .add(const OrdersEvent
                                              .removeIdCardImage()),
                                      child: const CircleAvatar(
                                        backgroundColor: kBluePrimary,
                                        child:
                                            Icon(Icons.delete, color: kWhite),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : kEmpty
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        kWidth10,
        BlocBuilder<OrdersBloc, OrdersState>(
          buildWhen: (previous, current) =>
              previous.deviceBill != current.deviceBill ||
              previous.orderCompletionError != current.orderCompletionError,
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
                          width: state.orderCompletionError &&
                                  state.deviceBill == null
                              ? 2
                              : 1,
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
                          Text('Device Bill', style: textHeadRegular2),
                          kWidth10,
                          Icon(Icons.camera_outlined,
                              color: state.orderCompletionError &&
                                      state.deviceBill == null
                                  ? kRedDark
                                  : kBlack)
                        ],
                      )),
                      state.deviceBill != null ? kHeight10 : kEmpty,
                      state.deviceBill != null
                          ? AspectRatio(
                              aspectRatio: 1,
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,
                                    child: InkWell(
                                      onTap: () => Navigator.pushNamed(
                                          context, Routes.imagePreviewPage,
                                          arguments:
                                              state.deviceBill!.fileImage.path),
                                      child: Image.file(
                                          state.deviceBill!.fileImage,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                    top: 3,
                                    right: 3,
                                    child: InkWell(
                                      onTap: () => context
                                          .read<OrdersBloc>()
                                          .add(const OrdersEvent
                                              .removeDiviceBill()),
                                      child: const CircleAvatar(
                                        backgroundColor: kBluePrimary,
                                        child:
                                            Icon(Icons.delete, color: kWhite),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : kEmpty
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
