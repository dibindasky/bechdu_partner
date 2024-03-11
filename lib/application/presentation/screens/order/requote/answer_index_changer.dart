import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialog_cancel_order.dart';
import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialoge_requote_price.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerIndexChanger extends StatelessWidget {
  const AnswerIndexChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth20,
        Expanded(
          child: StatusColoredBox(
              // order id need to pass for cancelation
              onTap: () => showDialogeCancel(context, ''),
              text: 'Cancel',
              color: kRed,
              fontWeight: FontWeight.w700,
              verticalPadding: 10),
        ),
        kWidth20,
        Expanded(
          child: BlocBuilder<RequoteBloc, RequoteState>(
            builder: (context, state) {
              return StatusColoredBox(
                  onTap: () {
                    if (state.requoteIndex >= state.map.length - 1) {
                      showDialogeRequote(context);
                    } else {
                      context
                          .read<RequoteBloc>()
                          .add( RequoteEvent.changeIndex(index: state.requoteIndex+1));
                    }
                  },
                  text: 'Continue',
                  color: kGreenPrimary,
                  fontWeight: FontWeight.w700,
                  verticalPadding: 10);
            },
          ),
        ),
        kWidth20
      ],
    );
  }
}
