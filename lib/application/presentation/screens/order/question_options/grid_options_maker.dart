import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_option_selector_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class GridOptionMaker extends StatelessWidget {
  const GridOptionMaker({super.key, required this.map});

  final Map map;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: map['data'].length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GridOptionSelectorTile(
                  map: map['data'][index] as Map<String, dynamic>),
            ),
            kHeight30,
            const AnswerIndexChanger(),
            kHeight30
          ],
        ),
      ),
    );
  }
}
