import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/slidable_image_list.dart';
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
                    width: state.orderCompletionError &&
                            (state.deviceImages == null ||
                                state.deviceImages == [])
                        ? 2
                        : 1,
                    color: state.orderCompletionError &&
                            (state.deviceImages == null ||
                                state.deviceImages == [])
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
                    Icon(Icons.camera_outlined,
                        color: state.orderCompletionError &&
                                (state.deviceImages == null ||
                                    state.deviceImages == [])
                            ? kRedDark
                            : kBlack)
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
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ScreenSlidablePhotoGallery(
                                                    images: state.deviceImages!
                                                        .map((e) =>
                                                            e.base64Image)
                                                        .toList(),
                                                    initialIndex: index),
                                          )),
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
