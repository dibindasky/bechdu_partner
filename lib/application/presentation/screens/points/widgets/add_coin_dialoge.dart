import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_short_button.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

final TextEditingController priceController = TextEditingController();

class AddCoinsDialoge extends StatelessWidget {
  const AddCoinsDialoge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: kBluePrimary,
          child: SizedBox(
            width: sWidth * 0.80,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Points',
                        style: textHeadBold1.copyWith(color: kWhite),
                      ),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.close,
                          color: kWhite,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Add More Points To Get Extra Discount',
                    style: textHeadRegular1.copyWith(color: kWhite),
                  ),
                  kHeight10,
                  ColoredBox(
                    color: kWhite,
                    child: TextField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      cursorColor: kBluePrimary,
                      style: textHeadBoldBig,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                    ),
                  ),
                  kHeight5,
                  const Row(
                    children: [
                      AddCoinShortCutButton(coins: 100),
                      AddCoinShortCutButton(coins: 200),
                      AddCoinShortCutButton(coins: 300),
                      AddCoinShortCutButton(coins: 500)
                    ],
                  ),
                  kHeight20,
                  Center(
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: kRadius5,
                        child: ColoredBox(
                          color: kWhite,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Text(
                              'Pay ₹5,000',
                              style: textHeadBoldBig,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

