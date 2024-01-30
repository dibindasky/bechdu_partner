import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_blur_maker.dart';
import 'package:flutter/material.dart';

class OrderDetailDiviceDetailsSession extends StatelessWidget {
  const OrderDetailDiviceDetailsSession({super.key, this.isBlurred = false});

  final bool isBlurred;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        elevation: 5,
        borderRadius: kRadius5,
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kWhite,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: BlurerMaker(
                show: isBlurred,
                child: Column(
                  children: [
                        kHeight10,
                        Text('Device Details', style: textHeadBoldBig),
                        kHeight10,
                      ] +
                      List.generate(testQuestionMap.length, (index) {
                        List<Map<String, String>> data = testQuestionMap[index]
                            ['data'] as List<Map<String, String>>;
                        if (testQuestionMap[index]['sectionType'] == 'yes/no') {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                    Text(
                                        testQuestionMap[index]['sectionHeading']
                                            as String,
                                        style: textHeadBoldBig)
                                  ] +
                                  List.generate(
                                    data.length,
                                    (position) => Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                              data[position]['description']!,
                                              style: textHeadBold1),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: sWidth * 0.1,
                                            child: ClipRRect(
                                              borderRadius: kRadius15,
                                              child: ColoredBox(
                                                color:
                                                    kRedLight.withOpacity(0.5),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 3),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.clear_outlined,
                                                        size: sWidth * 0.03,
                                                      ),
                                                      kWidth5,
                                                      Text(
                                                        'No',
                                                        style: textHeadMedium1,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ) +
                                  [
                                    const Row(
                                      children: [kHeight20],
                                    )
                                  ]);
                        } else {
                          return Column(
                            children: List.generate(
                                  data.length,
                                  (position) => Row(
                                    children: [
                                      Expanded(
                                        child: position == 0
                                            ? Text(
                                                testQuestionMap[index]
                                                        ['sectionHeading']
                                                    as String,
                                                style: textHeadBoldBig)
                                            : kEmpty,
                                      ),
                                      Expanded(
                                        child: Text(
                                            data[position]['description']!,
                                            style: textHeadBold1),
                                      )
                                    ],
                                  ),
                                ) +
                                [
                                  const Row(
                                    children: [kHeight20],
                                  )
                                ],
                          );
                        }
                      }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
