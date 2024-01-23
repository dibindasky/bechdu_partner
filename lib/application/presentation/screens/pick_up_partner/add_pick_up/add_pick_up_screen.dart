import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/add_pick_up/widgets/text_field_maker.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_elevated_buttton_long.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ScreenAddPickUpPartner extends StatelessWidget {
  const ScreenAddPickUpPartner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Pickup Partner',
            style: textHeadBoldBig2,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Profile Picture',
                  style: textHeadMediumBig.copyWith(color: kGreyDark),
                ),
                kHeight10,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: kGreyLight),
                      borderRadius: kRadius10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: sWidth * 0.06,
                          backgroundColor: kWhite,
                          child: const Icon(Icons.person, color: kGreyLight)),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: kBluePrimary),
                            borderRadius: kRadius50),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.camera_alt, color: kBluePrimary),
                            Text(
                              'Upload Photo',
                              style: textHeadRegular1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                kHeight10,
                TextFieldMaker(
                  headline: 'First Name',
                  child: CustomTextFormField(
                      controller: TextEditingController(),
                      hintText: 'Please enter first name'),
                ),
                TextFieldMaker(
                  headline: 'Last Name',
                  child: CustomTextFormField(
                      controller: TextEditingController(),
                      hintText: 'Please enter last name'),
                ),
                TextFieldMaker(
                  headline: 'Mobile Number',
                  child: CustomTextFormField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.number,
                      hintText: '000'),
                ),
                TextFieldMaker(
                  headline: 'Mail Address',
                  child: CustomTextFormField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Please Enter mail address'),
                ),
                TextFieldMaker(
                  headline: 'Set Password',
                  child: CustomTextFormField(
                      controller: TextEditingController(),
                      isObscure: true,
                      hintText: '************'),
                ),
                TextFieldMaker(
                  headline: 'Re-Enter Password',
                  child: CustomTextFormField(
                      controller: TextEditingController(),
                      isObscure: true,
                      hintText: '************'),
                ),
                kHeight30,
                ElevatedButtonLong(onPressed: () {}, text: 'Create')
              ],
            ),
          ),
        ));
  }
}
