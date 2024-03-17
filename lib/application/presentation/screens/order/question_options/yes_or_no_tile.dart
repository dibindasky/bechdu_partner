import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/option.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YesOrNoTile extends StatelessWidget {
  const YesOrNoTile(
      {super.key,
      required this.option,required this.onTap,
      required this.selected,
      required this.state});

  final Option option;
  final bool? selected;
  final RequoteState state;
  final VoidCallback onTap;

  // @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: kRadius5,
        elevation: 5,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  option.description ?? '',
                  style: textHeadBold1,
                ),
                kHeight10,
                Row(
                  children: [
                    TapButtonYesOrNo(
                        onTap: () {
                          context.read<RequoteBloc>().add(
                              RequoteEvent.markYesOrNo(
                                  selectedOption: SelectedOption(
                                      description: option.description,
                                      type: option.type,
                                      value: true,
                                      heading: state
                                          .sections![state.requoteIndex]
                                          .heading)));
                          // setState(() {
                          //   changeSelection(true);
                          // });
                          onTap();
                        },
                        yesOrNo: true,
                        selected: selected == true),
                    kWidth20,
                    TapButtonYesOrNo(
                        onTap: () {
                          context.read<RequoteBloc>().add(
                              RequoteEvent.markYesOrNo(
                                  selectedOption: SelectedOption(
                                      description: option.description,
                                      type: option.type,
                                      value: false,
                                      heading: state
                                          .sections![state.requoteIndex]
                                          .heading)));
                          // setState(() {
                          //   changeSelection(false);
                          // });
                          onTap();
                        },
                        yesOrNo: false,
                        selected: selected == false),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class TapButtonYesOrNo extends StatelessWidget {
  const TapButtonYesOrNo({
    super.key,
    this.selected = false,
    required this.yesOrNo,
    required this.onTap,
  });

  final bool selected;
  final bool yesOrNo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: kRadius15,
        child: ColoredBox(
          color: selected && yesOrNo
              ? kGreenPrimary
              : selected && !yesOrNo
                  ? kRed
                  : yesOrNo
                      ? kGreenLight.withOpacity(0.5)
                      : kRedLight.withOpacity(0.5),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: selected ? 15 : 10, vertical: selected ? 5 : 3),
            child: Row(
              children: [
                Icon(
                  yesOrNo ? Icons.check : Icons.clear_outlined,
                  size: sWidth * 0.03,
                ),
                kWidth5,
                Text(
                  yesOrNo ? 'Yes' : 'No',
                  style: textHeadMedium1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
