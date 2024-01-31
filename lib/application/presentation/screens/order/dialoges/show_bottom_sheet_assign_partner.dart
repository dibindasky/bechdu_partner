import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

Future<dynamic> showBottomSheetAssignPartner(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: knill,
    context: context,
    builder: (context) => ClipPath(
      clipper: VerticalCurvesClipper(),
      child: ColoredBox(
        color: kWhite,
        child: SizedBox(
          height: sHeight * 0.55,
          width: sWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: sHeight * 0.08),
              Material(
                  borderRadius: kRadius5,
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: kRadius5,
                    child: const ColoredBox(
                      color: kGreyDark,
                      child: SizedBox(height: 5, width: 70),
                    ),
                  )),
              kHeight30,
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: ClipRRect(
                      borderRadius: kRadius5,
                      child: ColoredBox(
                        color: kBluelight,
                        child: ListTile(
                          leading: const Icon(
                            Icons.person_3_outlined,
                            color: kGreenPrimary,
                          ),
                          title: Text('Pickup Partner', style: textHeadMedium1),
                          subtitle: Text('Aman Sharma', style: textHeadBold1),
                          trailing: SizedBox(
                            width: sWidth * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: sWidth * 0.04,
                                  backgroundColor: kBluePrimary,
                                  child: Icon(
                                    Icons.phone,
                                    color: kWhite,
                                    size: sWidth * 0.05,
                                  ),
                                ),
                                kWidth10,
                                ClipRRect(
                                  borderRadius: kRadius5,
                                  child: ColoredBox(
                                    color: kBluePrimary,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Text(
                                        'Assign',
                                        style: textHeadMedium1.copyWith(
                                            color: kWhite),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
