import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequoteTabs extends StatelessWidget {
  const RequoteTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequoteBloc, RequoteState>(
      buildWhen: (previous, current) =>
          previous.requoteIndex != current.requoteIndex,
      builder: (context, state) {
        return SizedBox(width: sWidth,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                state.map.length,
                (index) => ClipRRect(
                  borderRadius: kRadius15,
                  child: ColoredBox(
                    color: index == state.requoteIndex ? kGreenPrimary : knill,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      child: Text(
                        state.map[index]['sectionHeading'] as String,
                        style: textHeadSemiBold1.copyWith(
                            color: index == state.requoteIndex ? kWhite : kBlack),
                      ),
                    ),
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
