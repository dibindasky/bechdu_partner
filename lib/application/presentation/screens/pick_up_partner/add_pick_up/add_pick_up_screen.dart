import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/add_pick_up/widgets/text_field_maker.dart';
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
                    hintText: '00000 00000'),
              ),
              TextFieldMaker(
                headline: 'Mail Address',
                child: CustomTextFormField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Please Enter mail address'),
              ),
              kHeight50,
              ElevatedButtonLong(onPressed: () {}, text: 'Create'),
            ],
          ),
        ),
      ),
    );
  }
}
