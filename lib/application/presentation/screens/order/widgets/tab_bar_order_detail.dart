import 'package:bechdu_partner/application/presentation/screens/order/question_options/Image_grid_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_options_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_list_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_tab.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/phone_detail_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/pickup_details.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

enum OrderTab { pickup, device }

ValueNotifier<OrderTab> orderTabNotifier = ValueNotifier(OrderTab.pickup);

class TabBarOrderDetail extends StatelessWidget {
  const TabBarOrderDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const TabBarOrder(),
          kHeight20,
          ValueListenableBuilder(
              valueListenable: orderTabNotifier,
              builder: (context, tab, _) {
                if (tab == OrderTab.pickup) {
                  return const Column(
                    children: [
                      PickUpDetailTile(),
                      kHeight10,
                      PhoneDetailTileOrder()
                    ],
                  );
                } else {
                  return Expanded(
                    child: ListView.separated(
                      itemCount: testQuestionMap.length,
                      separatorBuilder: (context, index) => kHeight20,
                      itemBuilder: (context, index) {
                        if (testQuestionMap[index]['sectionType'] == 'yes/no') {
                          return YesOrNoListMaker(map: testQuestionMap[index]);
                        } else if (testQuestionMap[index]['sectionType'] ==
                            'image') {
                          return ImageGridMaker(map: testQuestionMap[index]);
                        } else {
                          return GridOptionMaker(map: testQuestionMap[index]);
                        }
                      },
                    ),
                    // child: SingleChildScrollView(
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       YesOrNoListMaker(),
                    //       kHeight20,
                    //       ImageGridMaker(),
                    //       kHeight20,
                    //       ImageGridMaker(),
                    //       kHeight20,
                    //       GridOptionMaker()
                    //     ],
                    //   ),
                    // ),
                  );
                }
              })
        ],
      ),
    );
  }
}
