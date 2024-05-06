import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/image_seletion_tile.dart';
import 'package:bechdu_partner/application/presentation/screens/order/requote/answer_index_changer.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageGridMaker extends StatefulWidget {
  const ImageGridMaker({super.key, required this.list});

  final List<Option> list;

  @override
  State<ImageGridMaker> createState() => _ImageGridMakerState();
}

class _ImageGridMakerState extends State<ImageGridMaker> {

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
                itemCount: widget.list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:
                        widget.list.length <= 4 ? 1 / 1.3 : 1 / 1.5,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    crossAxisCount: widget.list.length <= 4 ? 2 : 3),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return BlocBuilder<RequoteBloc, RequoteState>(
                    builder: (context, state) {
                      final answers = state.selectedAnswers[
                              state.sections![state.requoteIndex].heading!]!
                          .where((element) =>
                              element.description ==
                              widget.list[index].description)
                          .toList();
                      return GridTileQuestion(
                        onTap: () {
                          setState(() {});
                        },
                        option: widget.list[index],
                        selected: answers.isNotEmpty,
                      );
                    },
                  );
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
