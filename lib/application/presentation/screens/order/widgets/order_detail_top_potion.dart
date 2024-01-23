import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_custom_buttom.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class OrderDetailTopPart extends StatelessWidget {
  const OrderDetailTopPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: sWidth * 0.20,
          backgroundImage: const AssetImage(phoneImage),
        ),
        kHeight10,
        Text(
          'Iphone 11',
          style: textHeadMedium1.copyWith(fontSize: sWidth * 0.06),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Price', style: textHeadMedium1),
            kWidth10,
            Text(
              '₹19,999',
              style: textHeadMedium1.copyWith(fontSize: sWidth * 0.05),
            ),
          ],
        ),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OrdersCustomButton(
                text: 'Cancel', image: iconCancel, onTap: () {}),
            kWidth5,
            OrdersCustomButton(
                text: 'Reschedule', image: iconShedule, onTap: () {}),
            kWidth5,
            OrdersCustomButton(
                text: 'Complete', image: iconCompleteCheck, onTap: () {})
          ],
        ),
        kHeight10,
        OrdersCustomButton(
            text: 'Requote Price',
            image: iconRedo,
            onTap: () {},
            expnded: false),kHeight30
      ],
    );
  }
}
