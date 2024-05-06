import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_option_selector_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/option.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionMaker extends StatefulWidget {
  const GridOptionMaker({super.key, required this.list});

  final List<Option> list;

  @override
  State<GridOptionMaker> createState() => _GridOptionMakerState();
}

class _GridOptionMakerState extends State<GridOptionMaker> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<RequoteBloc, RequoteState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  key: UniqueKey(),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final answers = state.selectedAnswers[
                            state.sections![state.requoteIndex].heading!]!
                        .where((element) =>
                            element.description ==
                            widget.list[index].description)
                        .toList();
                    return GridOptionSelectorTile(
                      option: widget.list[index],
                      selected: answers.isNotEmpty,
                      onTap: () {
                        context.read<RequoteBloc>().add(RequoteEvent.markAnswer(
                            selectedOption: SelectedOption(
                                description: widget.list[index].description,
                                heading:
                                    state.sections![state.requoteIndex].heading,
                                value: null,
                                type: state.sections![state.requoteIndex]
                                    .options![index].type)));
                        setState(() {});
                      },
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
