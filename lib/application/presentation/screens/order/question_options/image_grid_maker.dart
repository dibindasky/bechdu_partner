import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/image_seletion_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageGridMaker extends StatelessWidget {
  const ImageGridMaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<RequoteBloc, RequoteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final list = state.sections![state.requoteIndex].options;
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: list!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: list.length <= 4 ? 1 / 1.3 : 1 / 1.5,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: list.length <= 4 ? 2 : 3),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GridTileQuestion(option: list[index]);
                    },
                  ),
                ),
                kHeight30,
                const AnswerIndexChanger(),
                kHeight30
              ],
            ),
          );
        },
      ),
    );
  }
}
