import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YesOrNoListMaker extends StatelessWidget {
  const YesOrNoListMaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: BlocConsumer<RequoteBloc, RequoteState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final list = state.sections![state.requoteIndex].options;
            print('list maker ================');
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return YesOrNoTile(option: list[index]);
                    },
                  ),
                ),
                kHeight30,
                const AnswerIndexChanger(),
                kHeight30
              ],
            );
          },
        ),
      ),
    );
  }
}
