import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';

showDialogeRequote(context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      child: ClipRRect(
        borderRadius: kRadius10,
        child: ColoredBox(
          color: kWhite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: sWidth * 0.55,
                    width: sWidth * 0.8,
                    child: Image.asset(
                      phoneImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: kWhite,
                      ),
                    ),
                  )
                ],
              ),
              kHeight10,
              Text(
                'Iphone 11',
                style: textHeadBold1,
              ),
              kHeight20,
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Old Price', style: textHeadBold1),
                        Text('₹ 19,999', style: textHeadRegular1)
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('New Price', style: textHeadBold1),
                        Text('₹ 18,999', style: textHeadRegular1)
                      ],
                    ),
                  ),
                  kHeight30,
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: StatusColoredBox(
                              text: 'Cancel',
                              color: kRed,
                              fontWeight: FontWeight.w700,
                              verticalPadding: 10),
                        ),
                        kWidth20,
                        Expanded(
                          child: StatusColoredBox(
                              text: 'Continue',
                              color: kGreenPrimary,
                              fontWeight: FontWeight.w700,
                              verticalPadding: 10),
                        )
                      ],
                    ),
                  ),
                  kHeight10
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
