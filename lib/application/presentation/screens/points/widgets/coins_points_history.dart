import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinsPointsHistory extends StatelessWidget {
  const CoinsPointsHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius10,
      child: ColoredBox(
        color: kBluelight.withOpacity(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text('History', style: textHeadBoldBig),
            ),
            BlocBuilder<OrdersBloc, OrdersState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return ShimmerLoader(
                      itemCount: 10, height: sWidth * 0.25, width: sWidth);
                } else if (state.partnerOrders != null &&
                    state.partnerOrders!.isNotEmpty) {
                  final list = state.partnerOrders;
                  return RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.getPartnerOrders(call: true));
                    },
                    child: ListView.builder(
                      itemCount: state.partnerOrders?.length ?? 0,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final data = list![index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: ColoredBox(
                            color: kWhite,
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: sWidth * 0.25,
                                    width: sWidth * 0.32,
                                    child: FittedBox(
                                        child: Image.network(
                                      data.productDetails?.image ?? '',
                                      fit: BoxFit.contain,
                                    )),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.productDetails?.name == null
                                            ? ''
                                            : data.productDetails!.name!
                                                        .length >
                                                    18
                                                ? '${data.productDetails!.name!.substring(0, 15)}..'
                                                : data.productDetails!.name!,
                                        style: textHeadRegular2,
                                      ),
                                      Text(
                                        '₹ ${data.productDetails?.price ?? 0}',
                                        style: textHeadRegularBig.copyWith(
                                            color: kGreyLight),
                                      ),
                                      kHeight5,
                                      StatusColoredBox(
                                          text: data.status ?? '',
                                          color:
                                              getStatusColor(data.status ?? ''))
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(data.coins ?? '0',
                                          style: textHeadBoldBig),
                                      kWidth5,
                                      CircleAvatar(
                                        radius: sWidth * 0.03,
                                        backgroundColor: kWhite,
                                        backgroundImage:
                                            const AssetImage(iconNottoCoin),
                                      ),
                                      kWidth10
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else if (state.partnerOrders == null) {
                  return ErrorRefreshIndicator(
                      shrinkWrap: true,
                      onRefresh: () => context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.getPartnerOrders(call: true)));
                } else {
                  return ErrorRefreshIndicator(
                      shrinkWrap: true,
                      errorMessage: 'No transcations yet',
                      onRefresh: () => context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.getPartnerOrders(call: true)));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
