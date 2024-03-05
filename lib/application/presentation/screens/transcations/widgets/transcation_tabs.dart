import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranscationTabBar extends StatefulWidget {
  const TranscationTabBar({
    super.key,
  });

  @override
  State<TranscationTabBar> createState() => _TranscationTabBarState();
}

class _TranscationTabBarState extends State<TranscationTabBar> {
  int selectedIndex = 0;
  bool isCredited = true;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: sWidth * 0.7,
        decoration: BoxDecoration(
            border: Border.all(color: kGreenPrimary, width: 2),
            borderRadius: kRadius50),
        child: BlocBuilder<TranscationBloc, TranscationState>(
          builder: (context, state) {
            return Row(
              children: [
                selectionContainer(
                    text: 'Credited', isSelected: state.isCreditedTab),
                selectionContainer(
                    text: 'Debited', isSelected: !state.isCreditedTab)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget selectionContainer({required String text, required bool isSelected}) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected ? kGreenPrimary : knill,
          borderRadius: kRadius50,
        ),
        child: InkWell(
          onTap: () => context
              .read<TranscationBloc>()
              .add(const TranscationEvent.changeTab()),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Center(
              child: Text(
                text,
                style: textHeadBoldBig.copyWith(
                    color: isSelected ? kWhite : kBlack),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
