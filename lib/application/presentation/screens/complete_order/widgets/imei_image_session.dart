import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImeiNumberPhotoSession extends StatelessWidget {
  const ImeiNumberPhotoSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<OrdersBloc>().add(const OrdersEvent.addImeiImage());
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: kGreyLight), borderRadius: kRadius10),
            child: Column(
              children: [
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('IMEI Number Image', style: textHeadRegular2),
                    kWidth10,
                    const Icon(Icons.camera_outlined)
                  ],
                )),
                state.imeiImage != null ? kHeight10 : kEmpty,
                state.imeiImage != null
                    ? AspectRatio(
                        aspectRatio: 1,
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: InkWell(
                                onTap: () => Navigator.pushNamed(
                                    context, Routes.imagePreviewPage,
                                    arguments: state.imeiImage!.fileImage.path),
                                child: Image.file(state.imeiImage!.fileImage,
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              right: 3,
                              child: InkWell(
                                onTap: () => context
                                    .read<OrdersBloc>()
                                    .add(const OrdersEvent.removeImeiImage()),
                                child: const CircleAvatar(
                                  backgroundColor: kBluePrimary,
                                  child: Icon(Icons.delete, color: kWhite),
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
        );
      },
    );
  }
}
