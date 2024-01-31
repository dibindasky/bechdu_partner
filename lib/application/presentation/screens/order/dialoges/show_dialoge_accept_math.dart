import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

Future<dynamic> showDialogAcceptMathCalc(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: kWhite,
          child: Stack(
            children: [
              SizedBox(
                width: sWidth * 0.90,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      kHeight20,
                      Text('Complete the math calculation to finish the order',
                          style: textHeadBoldBig),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('3', style: textHeadBoldBig),
                          Text('+', style: textHeadBoldBig),
                          Text('3', style: textHeadBoldBig),
                          Text('=', style: textHeadBoldBig),
                          SizedBox(
                            width: sWidth * 0.1,
                            child: ColoredBox(
                              color: kBluelight,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: textHeadBoldBig,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: InputBorder.none),
                              ),
                            ),
                          )
                        ],
                      ),
                      kHeight40,
                      AuthCustomButtom(
                        onTap: () {},
                        text: 'Accept Order',
                        backgroundColor: kBluePrimary.withOpacity(0.9),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: ClipRRect(
                  borderRadius: kRadius50,
                  child: ColoredBox(
                    color: kBluePrimary,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close,
                        color: kWhite,
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
  );
}
