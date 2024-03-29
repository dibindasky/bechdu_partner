import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialoge_requote_price.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/dialoge/dialoge.dart';
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
              onTap: () => showCustomDialoge(
                  context: context,
                  title: 'Cancel Requoteing',
                  buttonText: 'Cancel Requote',
                  onTap: () {
                    Navigator.pop(context);
                  }),
              // onTap: () => showDialogeCancel(context, ''),
              text: 'Cancel',
              color: kRed,
              fontWeight: FontWeight.w700,
              verticalPadding: 10),
        ),
        kWidth20,
        Expanded(
          child: BlocConsumer<RequoteBloc, RequoteState>(
            listener: (context, state) {
              if (state.priceCalculationLoading) {
                showDialog(
                    context: context,
                    builder: (context) => const Center(
                          child: CircularProgressIndicator(color: kBluePrimary),
                        ));
              }
              if (state.priceCalculationError) {
                Navigator.pop(context);
              }
              if (state.basePrice != null) {
                Navigator.pop(context);
                showDialogeRequote(context);
              }
            },
            builder: (context, state) {
              return StatusColoredBox(
                  onTap: () {
                    context.read<RequoteBloc>().add(RequoteEvent.changeIndex(
                        index: state.requoteIndex + 1));
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
