import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';

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
            ListView.builder(
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
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
                              child: Image.asset(
                            phoneImage,
                            fit: BoxFit.contain,
                          )),
                        ),
                        kWidth20,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Iphone 11',
                              style: textHeadRegularBig,
                            ),
                            Text(
                              '₹ 11,999',
                              style: textHeadRegularBig.copyWith(
                                  color: kGreyLight),
                            ),
                            kHeight5,
                            const StatusColoredBox(
                                text: 'Pickup Pending', color: kBluePrimary)
                          ],
                        ),
                        const Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('15', style: textHeadBoldBig),
                            kWidth5,
                            CircleAvatar(
                              radius: sWidth * 0.03,
                              backgroundColor: kWhite,
                              backgroundImage: const AssetImage(iconNottoCoin),
                            ),
                            kWidth10
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
