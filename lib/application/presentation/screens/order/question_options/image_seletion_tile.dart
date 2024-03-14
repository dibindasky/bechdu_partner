import 'dart:convert';

import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/option.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridTileQuestion extends StatefulWidget {
  const GridTileQuestion({super.key, required this.option});

  final Option option;

  @override
  State<GridTileQuestion> createState() => _GridTileQuestionState();
}

class _GridTileQuestionState extends State<GridTileQuestion> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequoteBloc, RequoteState>(
      builder: (context, state) {
        final data = state
            .selectedAnswers[state.sections?[state.requoteIndex].heading]
            ?.where(
                (element) => element.description == widget.option.description)
            .toList();
        selected = data != null && data.isNotEmpty ? true : false;
        return InkWell(
          onTap: () {
            context.read<RequoteBloc>().add(RequoteEvent.markAnswer(
                selectedOption: SelectedOption(
                    description: widget.option.description,
                    type: widget.option.type,
                    value: null,
                    heading: state.sections![state.requoteIndex].heading)));
            setState(() {
              selected = !selected;
            });
          },
          child: ClipRRect(
            borderRadius: kRadius10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: selected ? kGreenPrimary : kBlack,
                      width: selected ? 3 : 1),
                  borderRadius: kRadius10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: FittedBox(
                        child: Image.memory(base64Decode(widget.option.image!)),
                      ),
                    ),
                    Text(
                      widget.option.description ?? '',
                      style: textHeadBold1,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
