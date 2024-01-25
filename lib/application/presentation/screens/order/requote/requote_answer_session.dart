import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_options_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/image_grid_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_list_maker.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequoteAnswerSession extends StatelessWidget {
  const RequoteAnswerSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequoteBloc, RequoteState>(
      listener: (context, state) {
        if(state.message != null){
          print('emit message');
          showSnackBar(context: context, message: state.message!);
        }
      },
      builder: (context, state) {
        if (testQuestionMap[state.requoteIndex]['sectionType'] == 'yes/no') {
          return YesOrNoListMaker(map: testQuestionMap[state.requoteIndex]);
        } else if (testQuestionMap[state.requoteIndex]['sectionType'] ==
            'image') {
          return ImageGridMaker(map: testQuestionMap[state.requoteIndex]);
        } else {
          return GridOptionMaker(map: testQuestionMap[state.requoteIndex]);
        }
      },
    );
  }
}

