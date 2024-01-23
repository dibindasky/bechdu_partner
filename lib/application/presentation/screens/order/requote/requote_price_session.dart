import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_options_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/image_grid_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_list_maker.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> requoteIndexNotifier = ValueNotifier(0);

continueAnswer() {
  print('continue pressed');
  if (requoteIndexNotifier.value >= testQuestionMap.length-1) {
  } else {
    requoteIndexNotifier.value++;
  }
  requoteIndexNotifier.notifyListeners();
}

class RequotePriceSession extends StatelessWidget {
  const RequotePriceSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: VerticalCurvesClipper(),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: sWidth,
              height: sHeight,
              decoration: const BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: kBlack,
                    blurRadius: 5.0,
                    offset: Offset(-5.0, -5.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            CircleAvatar(
              radius: sWidth * 0.20,
              backgroundImage: const AssetImage(phoneImage),
            ),
            kHeight30,
            const RequoteTabs(),
            kHeight20,
            RequoteAnswerSession()
          ],
        )
      ],
    );
  }
}

class RequoteAnswerSession extends StatelessWidget {
  const RequoteAnswerSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: requoteIndexNotifier,
      builder: (context, tab, child) {
        if (testQuestionMap[tab]['sectionType'] == 'yes/no') {
          return YesOrNoListMaker(map: testQuestionMap[tab]);
        } else if (testQuestionMap[tab]['sectionType'] == 'image') {
          return ImageGridMaker(map: testQuestionMap[tab]);
        } else {
          return GridOptionMaker(map: testQuestionMap[tab]);
        }
      },
    );
  }
}

class RequoteTabs extends StatelessWidget {
  const RequoteTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: requoteIndexNotifier,
      builder: (context, tab, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            testQuestionMap.length,
            (index) => ClipRRect(
              borderRadius: kRadius15,
              child: ColoredBox(
                color:
                    index == requoteIndexNotifier.value ? kGreenPrimary : knill,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    testQuestionMap[index]['sectionHeading'] as String,
                    style: textHeadSemiBold1.copyWith(
                        color: index == requoteIndexNotifier.value
                            ? kWhite
                            : kBlack),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
