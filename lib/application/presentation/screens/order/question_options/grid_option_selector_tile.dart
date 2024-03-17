import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionSelectorTile extends StatelessWidget {
  const GridOptionSelectorTile(
      {super.key, required this.option, required this.onTap, required this.selected});

  final Option option;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequoteBloc, RequoteState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: selected ? kBluePrimary : knill,
                  border: Border.all(color: kBluePrimary, width: 2)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: Text(
                    option.description ?? '',
                    style: textHeadBold1.copyWith(
                        color: selected ? kWhite : kBluePrimary),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
