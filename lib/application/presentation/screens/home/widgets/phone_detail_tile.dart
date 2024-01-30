import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class PhoneDetailTile extends StatelessWidget {
  const PhoneDetailTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.orderScreen,
          arguments: <String, bool>{'newOrder': false, 'detail': false}),
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: kWhite,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: sWidth * 0.17,
                  width: sWidth * 0.22,
                  child: FittedBox(
                      child: Image.asset(
                    phoneImage,
                    fit: BoxFit.cover,
                  )),
                ),
                kWidth20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Iphone 11',
                      style: textHeadRegular1,
                    ),
                    Text(
                      '₹ 11,999',
                      style: textHeadRegular1.copyWith(color: kGreyLight),
                    ),
                    Row(
                      children: [
                        Text('15', style: textHeadBold1),
                        kWidth5,
                        CircleAvatar(
                          radius: sWidth * 0.02,
                          backgroundColor: kWhite,
                          backgroundImage: const AssetImage(iconNottoCoin),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_circle_right_rounded,
                  color: kBluePrimary,
                ),
                kWidth10
              ],
            ),
          ),
        ),
      ),
    );
  }
}
