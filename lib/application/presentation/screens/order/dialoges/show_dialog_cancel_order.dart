import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

void showDialogeCancel(context) {
  showDialog(
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
                      Text('Reason For Cancelling The Order',
                          style: textHeadBoldBig),
                      kHeight20,
                      ColoredBox(
                        color: kGreyLight.withOpacity(0.2),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Write here'),
                          ),
                        ),
                      ),
                      kHeight50,
                      AuthCustomButtom(
                        onTap: () {},
                        text: 'Cancel',
                        backgroundColor: kRed.withOpacity(0.9),
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
