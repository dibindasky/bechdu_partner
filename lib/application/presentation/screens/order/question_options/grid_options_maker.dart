import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_option_selector_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionMaker extends StatelessWidget {
  const GridOptionMaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<RequoteBloc, RequoteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state.sections == null) {
            return Center(child: Text('no question avilable'));
          }
          final list = state.sections![state.requoteIndex].options!;
          // final data = state
          //     .selectedAnswers[state.sections?[state.requoteIndex].heading];
          // final selected = list
          //     .where(
          //         (element) => element.description == data?.first.description)
          //     .toList();

          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GridOptionSelectorTile(
                      option: list[index],
                      // selected: selected.contains(list[index]),
                      onTap: () => context.read<RequoteBloc>().add(
                          RequoteEvent.markGrid(
                              selectedOption: SelectedOption(
                                  description: list[index].description,
                                  heading: state
                                      .sections![state.requoteIndex].heading,
                                  value: null,
                                  type: state
                                      .sections![state.requoteIndex].type))),
                    );
                  },
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
