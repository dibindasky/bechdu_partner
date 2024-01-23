import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_dialoge.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class AddCoinShortCutButton extends StatelessWidget {
  const AddCoinShortCutButton({
    super.key,
    required this.coins,
  });

  final int coins;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (priceController.text.isEmpty) {
          priceController.text = '0';
        }
        priceController.text =
            (int.parse(priceController.text) + coins).toString();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kWhite.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '+$coins',
                style: textHeadBold1.copyWith(color: kWhite),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
