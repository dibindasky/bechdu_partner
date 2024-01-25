import 'package:bechdu_partner/application/presentation/screens/order/question_options/image_seletion_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ImageGridMaker extends StatelessWidget {
  const ImageGridMaker({super.key, required this.map});

  final Map<String,dynamic> map;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: map['data'].length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.5,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    crossAxisCount: 3),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GridTileQuestion(map: map['data'][index]);
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
