import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';

class PendingTranscationSession extends StatelessWidget {
  const PendingTranscationSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pending Transaction', style: textHeadBoldBig),
        kHeight10,
        Container(
          padding: const EdgeInsets.all(10),
          decoration:
              BoxDecoration(border: Border.all(), borderRadius: kRadius15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('500 Points',
                    style: textHeadMediumBig.copyWith(fontSize: sWidth * 0.06)),
                Text('₹ 5,000',
                    style: textHeadBoldBig2.copyWith(color: kRedDark))
              ],
            ),
            kHeight20,
            ColoredBox(
              color: kBluelight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  kWidth5,
                  Text('Receipt not yet uploaded', style: textHeadRegular1),
                  kWidth10,
                  const Icon(
                    Icons.circle,
                    size: 10,
                    color: kRedDark,
                  ),
                  Text(
                    'Due',
                    style: textHeadSemiBold1.copyWith(color: kRedDark),
                  ),
                  kWidth5
                ],
              ),
            ),
            kHeight20,
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: kBluePrimary,
              style: textHeadRegular1.copyWith(color: kBluePrimary),
              decoration: InputDecoration(
                hintText: 'Upload The Receipt here',
                hintStyle: textHeadRegular1.copyWith(color: kBluePrimary),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_upload_outlined,
                      color: kBluePrimary,
                    )),
                enabledBorder: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.only(left: 10),
              ),
            ),
            kHeight30,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: StatusColoredBox(
                  text: 'Proceed',
                  color: kGreenPrimary,
                  fontWeight: FontWeight.w600,
                  verticalPadding: 10),
            ),
            kHeight20
          ]),
        ),
        kHeight20
      ],
    );
  }
}
