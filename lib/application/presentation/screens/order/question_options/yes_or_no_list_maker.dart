import 'dart:math';

import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YesOrNoListMaker extends StatefulWidget {
  const YesOrNoListMaker({super.key, required this.list});

  final List<Option> list;

  @override
  State<YesOrNoListMaker> createState() => _YesOrNoListMakerState();
}

class _YesOrNoListMakerState extends State<YesOrNoListMaker> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: PageStorage(
                bucket: PageStorageBucket(),
                key: PageStorageKey(generateRandomString(10)),
                child: ListView.builder(
                  key: UniqueKey(),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return BlocBuilder<RequoteBloc, RequoteState>(
                      builder: (context, state) {
                        final answers = state.selectedAnswers[
                                state.sections![state.requoteIndex].heading!]!
                            .where((element) =>
                                element.description ==
                                widget.list[index].description)
                            .toList();
                        final selection =
                            answers.isEmpty ? null : answers.first.value;
                        print('selection $index => $selection');
                        return YesOrNoTile(
                          onTap: () => setState(() {}),
                          state: state,
                          option: widget.list[index],
                          selected: selection,
                        );
                      },
                    );
                  },
                ),
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
