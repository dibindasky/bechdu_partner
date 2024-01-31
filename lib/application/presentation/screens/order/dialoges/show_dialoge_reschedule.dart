import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

void showDialogeReschedule(context) {
  showDialog(
    context: context,
    builder: (context) => const Dialog(
      child: ReshedulePopup(),
    ),
  );
}

class ReshedulePopup extends StatefulWidget {
  const ReshedulePopup({
    super.key,
  });

  @override
  State<ReshedulePopup> createState() => _ReshedulePopupState();
}

class _ReshedulePopupState extends State<ReshedulePopup> {
  DateTime? date;
  TimeOfDay? time;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: kWhite,
      child: Stack(
        children: [
          SizedBox(
            width: sWidth * 0.90,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight30,
                  Text('RESCHEDULE DETAILS', style: textHeadMedium1),
                  kHeight10,
                  shedulerContainer(
                      icon: Icons.calendar_month_outlined,
                      title: date != null
                          ? '${date!.day}/${date!.month}/${date!.year}'
                          : "Date",
                      onTap: () async {
                        final selectedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                            const Duration(days: 365),
                          ),
                        );
                        setState(() {
                          date = selectedDate;
                        });
                      }),
                  kHeight10,
                  shedulerContainer(
                      icon: Icons.timer_outlined,
                      title: time != null
                          ? '${time!.hour % 12} : ${time!.minute}'
                          : "Time",
                      onTap: () async {
                        final selectedTime = await showTimePicker(
                            context: context, initialTime: TimeOfDay.now());
                        setState(() {
                          time = selectedTime;
                        });
                      }),
                  kHeight20,
                  Text('Reason For Reschedule', style: textHeadBoldBig),
                  kHeight10,
                  ColoredBox(
                    color: kGreyLight.withOpacity(0.2),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Write here'),
                      ),
                    ),
                  ),
                  kHeight50,
                  AuthCustomButtom(
                    onTap: () {},
                    text: 'Reschedule',
                    backgroundColor: kOrangePrimary.withOpacity(0.9),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: ClipRRect(
              borderRadius: kRadius50,
              child: ColoredBox(
                color: kBluePrimary,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: kWhite,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container shedulerContainer(
      {required String title,
      required IconData icon,
      required VoidCallback onTap}) {
    return Container(
      height: sWidth * 0.1,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: kRadius10, border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: textHeadSemiBold1),
          InkWell(
            onTap: onTap,
            child: Icon(
              icon,
              color: kBluePrimary,
            ),
          )
        ],
      ),
    );
  }
}
