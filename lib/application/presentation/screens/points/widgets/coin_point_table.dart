import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_dialoge.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CoinPointTable extends StatelessWidget {
  const CoinPointTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadius5,
      child: ColoredBox(
        color: kBluelight.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Available Points', style: textHeadBoldBig),
                  Text('0', style: textHeadBoldBig)
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pending Points', style: textHeadBoldBig),
                  Text('50', style: textHeadBoldBig)
                ],
              ),
            ),
            kHeight20,
            SizedBox(
              width: sWidth * 0.5,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => const AddCoinsDialoge());
                },
                child: Material(
                  elevation: 3,
                  borderRadius: kRadius50,
                  child: ClipRRect(
                    borderRadius: kRadius50,
                    child: ColoredBox(
                      color: kWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: sWidth * 0.03,
                                backgroundImage: const AssetImage(iconNottoCoin),
                              ),
                              kWidth10,
                              Text(
                                'Add Points',
                                style: textHeadBoldBig,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}