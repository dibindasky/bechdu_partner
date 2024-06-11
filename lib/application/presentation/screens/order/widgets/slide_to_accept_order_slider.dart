import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_dialoge_accept_math.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_elevated_buttton_long.dart';
import 'package:flutter/material.dart';

class SliderOrderAccepting extends StatefulWidget {
  const SliderOrderAccepting(
      {super.key, required this.orderId, required this.showError});
  final String orderId;
  final bool showError;

  @override
  State<SliderOrderAccepting> createState() => _SliderOrderAcceptingState();
}

class _SliderOrderAcceptingState extends State<SliderOrderAccepting> {
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: widget.showError ? 20 : 5,
        child: widget.showError
            ? Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      color: kWhite,
                      border: Border.all(color: kRed),
                      borderRadius: kRadius15),
                  // height: 50,
                  width: sWidth - 50,
                  child: Column(
                    children: [
                      Transform.rotate(
                          angle: 40,
                          child: const Icon(Icons.add_circle_outlined,
                              color: kRed, size: 50)),
                      Text("Can't Accept Order", style: textHeadBoldBig),
                      Text('This order has been accepeted by other partner',
                          style: textHeadRegular1),
                      kHeight20,
                      ElevatedButtonLong(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: 'Cancel',
                          color: kRed)
                    ],
                  ),
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SizedBox(
                  width: sWidth - 40,
                  child: SliderTheme(
                    data: const SliderThemeData(
                      trackHeight: 40.0,
                      activeTrackColor: kBluePrimary,
                      inactiveTrackColor: kGreenPrimary,
                      thumbColor: kWhite,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 30, elevation: 5),
                    ),
                    child: Slider(
                      value: progress,
                      onChanged: (newValue) => setState(() {
                        progress = newValue;
                        if (progress > 0.9) {
                          showDialogAcceptMathCalc(context, widget.orderId);
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
