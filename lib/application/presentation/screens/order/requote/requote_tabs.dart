import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequoteTabs extends StatefulWidget {
  const RequoteTabs({
    super.key,
  });

  @override
  State<RequoteTabs> createState() => _RequoteTabsState();
}

class _RequoteTabsState extends State<RequoteTabs> {
  late ScrollController controller;
  @override
  void initState() {
    controller = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

// variable responsible for controller assigning to singlechildscroll and 
// animation start from the second tab
  int check = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequoteBloc, RequoteState>(
      buildWhen: (previous, current) =>
          previous.requoteIndex != current.requoteIndex,
      builder: (context, state) {
        if (check != 0) {
          // auto scroll tab according to the tab index
          final onePotion = controller.position.maxScrollExtent /
              (state.sections?.length ?? 0);
          controller.animateTo(
              state.requoteIndex == 0
                  ? controller.position.minScrollExtent
                  : state.requoteIndex == ((state.sections?.length ?? 0) - 1)
                      ? controller.position.maxScrollExtent
                      : onePotion * state.requoteIndex,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut);
        }
        check++;
        return PopScope(
          canPop: state.requoteIndex == 0,
          onPopInvoked: (didPop) {
            if (state.requoteIndex > 0) {
              context
                  .read<RequoteBloc>()
                  .add(RequoteEvent.goBackIndex(index: state.requoteIndex - 1));
            }
          },
          child: SingleChildScrollView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  state.sections?.length ?? 0,
                  (index) => InkWell(
                    onTap: () {
                      context
                          .read<RequoteBloc>()
                          .add(RequoteEvent.goBackIndex(index: index));
                    },
                    child: ClipRRect(
                      borderRadius: kRadius15,
                      child: ColoredBox(
                        color:
                            index == state.requoteIndex ? kGreenPrimary : knill,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          child: Text(
                            state.sections![index].heading ?? '',
                            style: textHeadSemiBold1.copyWith(
                                color: index == state.requoteIndex
                                    ? kWhite
                                    : kBlack),
                          ),
                        ),
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
