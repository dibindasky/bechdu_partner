import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GlobalKey<FormState> mobileKey = GlobalKey<FormState>();

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
          Form(
            key: mobileKey,
            child: CustomTextFormField(
                validate: Validate.phone,
                maxlength: 10,
                controller: context.read<AuthBloc>().phoneController,
                keyboardType: TextInputType.number,
                hintText: '9999988888'),
          ),
          kHeight20,
          Row(
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Checkbox(
                    value: state.agreePolicy,
                    activeColor: kBluePrimary,
                    onChanged: (value) {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.agreePolicy());
                    },
                  );
                },
              ),
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
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.isLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(color: kBluePrimary),
                  ),
                );
              }
              if (state.otpVerificationError || state.hasError) {
                Navigator.pop(context);
              }
              if (state.otpSend) {
                Navigator.pop(context);
                Navigator.pushNamed(context, Routes.otpPage);
              }
              if (state.message != null) {
                showSnackBar(
                    context: context,
                    message: state.message!,
                    color: state.hasError ||
                            !state.agreePolicy ||
                            state.otpVerificationError
                        ? kRed
                        : kGreenPrimary);
              }
            },
            builder: (context, state) {
              return AuthCustomButtom(
                  backgroundColor: kBluePrimary,
                  text: 'Send OTP',
                  onTap: () {
                    if (mobileKey.currentState!.validate()) {
                      context.read<AuthBloc>().add(
                            AuthEvent.sendOtp(
                              phoneNumberModel: PhoneNumberModel(
                                mobileNumber: context
                                    .read<AuthBloc>()
                                    .phoneController
                                    .text
                                    .trim(),
                              ),
                            ),
                          );
                    }
                  });
            },
          )
        ],
      ),
    );
  }
}
