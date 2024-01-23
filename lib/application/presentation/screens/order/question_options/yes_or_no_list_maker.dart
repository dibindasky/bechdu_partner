import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class YesOrNoListMaker extends StatelessWidget {
  const YesOrNoListMaker({super.key, required this.map});

  final Map<String, dynamic> map;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: map['data'].length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return YesOrNoTile(map: map['data'][index]);
                },
              ),
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
