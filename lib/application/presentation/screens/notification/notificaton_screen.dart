import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:bechdu_partner/application/presentation/utils/time/time_maker.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({super.key});

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context
            .read<NotificationBloc>()
            .add(const NotificationEvent.getNotificationsNext());
        context.read<OrdersBloc>().add(const OrdersEvent.refreshNewOrder());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<NotificationBloc>()
          .add(const NotificationEvent.getNotifications(reset: true));
      if (partner) {
        context
            .read<OrdersBloc>()
            .add(const OrdersEvent.getNewOrder(call: true));
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: textHeadBoldBig2),
      ),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, ordreState) {
          return BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                    child: CircularProgressIndicator(color: kBluePrimary));
              } else if (state.notificationList != null &&
                  state.notificationList!.isNotEmpty) {
                int length = state.pageLoading
                    ? state.notificationList!.length + 1
                    : state.notificationList!.length;
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<NotificationBloc>().add(
                        const NotificationEvent.getNotifications(reset: true));
                    if (partner) {
                      context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.getNewOrder(call: true));
                    }
                    await Future.delayed(const Duration(seconds: 2));
                  },
                  child: ListView.separated(
                    controller: controller,
                    itemCount: length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      if (index == state.notificationList!.length) {
                        return ShimmerLoader(
                            itemCount: 1, height: 100, width: sWidth);
                      }
                      final data = state.notificationList![index];
                      final color = getStatusColor(data.type ?? "");
                      return ListTile(
                        minLeadingWidth: 40,
                        isThreeLine: true,
                        onTap: () {
                          if (partner) {
                            Navigator.pushNamed(context, Routes.orderScreen,
                                arguments: data.type == 'new' &&
                                        ordreState.newOrders!
                                            .where((element) =>
                                                element.id == data.orderId)
                                            .isNotEmpty
                                    ? ordreState.newOrders!.firstWhere(
                                        (element) => element.id == data.orderId)
                                    : OrderDetail(id: data.orderId));
                          } else {
                            print('not partner from noti to order detail');
                            Navigator.pushNamed(context, Routes.orderScreen,
                                arguments: OrderDetail(id: data.orderId));
                          }
                        },
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.circle, size: 12, color: color),
                            kWidth10,
                            CircleAvatar(
                              backgroundColor: color.withOpacity(0.2),
                              child: Icon(getNotificationIcon(data.type ?? ''),
                                  color: color),
                            )
                          ],
                        ),
                        title: Text(
                          data.title ?? '',
                          style: textHeadBold1,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.body ?? '',
                              style: textHeadRegular1,
                            ),
                            kHeight5,
                            Text(
                              formatDateTime(data.timestamp!),
                              style: textHeadRegular1,
                            ),
                          ],
                        ),
                        trailing: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(Icons.arrow_forward_ios_outlined,
                                  color: kBlue),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              } else {
                return ErrorRefreshIndicator(
                    image: gifNoData,
                    errorMessage: 'No Notifications',
                    onRefresh: () {
                      context.read<NotificationBloc>().add(
                          const NotificationEvent.getNotifications(
                              reset: true));
                      if (partner) {
                        context
                            .read<OrdersBloc>()
                            .add(const OrdersEvent.getNewOrder(call: true));
                      }
                    });
              }
            },
          );
        },
      ),
    );
  }
}
