import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeviceImagesSession extends StatelessWidget {
  const DeviceImagesSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      buildWhen: (previous, current) =>
          previous.deviceImages != current.deviceImages ||
          previous.orderCompletionError != current.orderCompletionError,
      builder: (context, state) {
        return InkWell(
          onTap: () => context
              .read<OrdersBloc>()
              .add(const OrdersEvent.addDeviceImages()),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        state.orderCompletionError && state.deviceImages == null
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
                state.deviceImages != null && state.deviceImages!.isNotEmpty
                    ? kHeight10
                    : kEmpty,
                state.deviceImages != null && state.deviceImages!.isNotEmpty
                    ? AspectRatio(
                        aspectRatio: 1 / .5,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => kWidth20,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.deviceImages!.isNotEmpty
                              ? state.deviceImages!.length + 1
                              : state.deviceImages!.length,
                          itemBuilder: (context, index) {
                            if (index == state.deviceImages?.length) {
                              return InkWell(
                                onTap: () => context
                                    .read<OrdersBloc>()
                                    .add(const OrdersEvent.addDeviceImages()),
                                child: const AspectRatio(
                                  aspectRatio: .8,
                                  child: ColoredBox(
                                    color: kGreyLighter,
                                    child: Center(
                                      child: Icon(Icons.add_a_photo),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return Stack(
                              children: [
                                AspectRatio(
                                    aspectRatio: .8,
                                    child: InkWell(
                                      onTap: () => Navigator.pushNamed(
                                          context, Routes.imagePreviewPage,
                                          arguments: state.deviceImages![index]
                                              .fileImage.path),
                                      child: Image.file(
                                          state.deviceImages![index].fileImage,
                                          fit: BoxFit.cover),
                                    )),
                                Positioned(
                                  top: 3,
                                  right: 3,
                                  child: InkWell(
                                    onTap: () => context.read<OrdersBloc>().add(
                                        OrdersEvent.removeDeviceImage(
                                            index: index)),
                                    child: const CircleAvatar(
                                      backgroundColor: kBluePrimary,
                                      child: Icon(Icons.delete, color: kWhite),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      )
                    : kEmpty
              ],
            ),
          ),
        );
      },
    );
  }
}
