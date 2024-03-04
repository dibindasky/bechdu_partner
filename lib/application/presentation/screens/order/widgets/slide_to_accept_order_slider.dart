import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialoge_accept_math.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class SliderOrderAccepting extends StatefulWidget {
  const SliderOrderAccepting({super.key, required this.orderId});
  final String orderId;

  @override
  State<SliderOrderAccepting> createState() => _SliderOrderAcceptingState();
}

class _SliderOrderAcceptingState extends State<SliderOrderAccepting> {
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            width: sWidth - 40,
            child: SliderTheme(
              data: const SliderThemeData(
                trackHeight: 40.0,
                activeTrackColor: kBluePrimary,
                inactiveTrackColor: kGreenPrimary,
                thumbColor: kWhite,
                thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 30, elevation: 5),
              ),
              child: Slider(
                value: progress,
                onChanged: (newValue) => setState(() {
                  progress = newValue;
                  if (progress > 0.9) {
                    showDialogAcceptMathCalc(context,widget.orderId);
                    progress = 0;
                  }
                }),
                min: 0.0,
                max: 1.0,
              ),
            ),
          ),
        ));
  }
}
