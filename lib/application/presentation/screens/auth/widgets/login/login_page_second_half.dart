import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPageSecondHalf extends StatelessWidget {
  const LoginPageSecondHalf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Mobile Number',
            style: textHeadMedium1.copyWith(fontSize: sWidth * 0.045),
          ),
          kHeight20,
          CustomTextFormField(
              controller: context.read<AuthBloc>().phoneController,
              keyboardType: TextInputType.number,
              hintText: '9999988888'),
          kHeight20,
          Row(
            children: [
              const CheckBox(),
              Expanded(
                child: Wrap(
                  children: [
                    Text('By signing up I agree to the ',
                        style: textHeadMedium1),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Terms of use ',
                        style: textHeadMedium1.copyWith(color: kBluePrimary),
                      ),
                    ),
                    Text('and ', style: textHeadMedium1),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Privacy Policy.',
                        style: textHeadMedium1.copyWith(color: kBluePrimary),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          kHeight20,
          AuthCustomButtom(
              backgroundColor: kBluePrimary,
              text: 'Send OTP',
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.otpPage);
              })
        ],
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({
    super.key,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool mark = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: mark,
      onChanged: (value) {
        setState(() {
          mark = value!;
        });
      },
    );
  }
}
