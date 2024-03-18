import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/grid_options_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/image_grid_maker.dart';
import 'package:bechdu_partner/application/presentation/screens/order/question_options/yes_or_no_list_maker.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
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
        if (state.message != null) {
          showSnackBar(
              context: context,
              message: state.message!,
              color: state.hasError ? kRed : kGreenPrimary);
        }
      },
      buildWhen: (previous, current) =>
          previous.requoteIndex != current.requoteIndex,
      builder: (context, state) {
        print('session maker===========');
        if (state.sections![state.requoteIndex].type == 'yes/no') {
          return YesOrNoListMaker(
              list: state.sections![state.requoteIndex].options!);
        } else if (state.sections![state.requoteIndex].type == 'image') {
          return ImageGridMaker(
              list: state.sections![state.requoteIndex].options!);
        } else {
          return GridOptionMaker(
              list: state.sections![state.requoteIndex].options!);
        }
      },
    );
  }
}
