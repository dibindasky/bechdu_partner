import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class ScreenOTP extends StatefulWidget {
  const ScreenOTP({super.key});

  @override
  State<ScreenOTP> createState() => _ScreenOTPState();
}

class _ScreenOTPState extends State<ScreenOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter OTP to verify',
              style: textHeadBoldBig.copyWith(fontSize: sWidth * 0.07),
            ),
            kHeight20,
            Wrap(
              children: [
                Text('A 6 digit OTP has been sent to your phone number ',
                    style: textHeadMedium1.copyWith(color: kGreyLight)),
                Text('+91 9999988888 ', style: textHeadMedium1),
                InkWell(
                  onTap: () {},
                  child: Text(
                    ' Change',
                    style: textHeadMedium1.copyWith(color: kBluePrimary),
                  ),
                )
              ],
            ),
            kHeight20,
            Text(
              'Enter OTP Text',
              style: textHeadBoldBig.copyWith(color: kGreyDark),
            ),
            kHeight20,
            Pinput(
              controller: context.read<AuthBloc>().otpController,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              onCompleted: (value) {},
              length: 6,
              defaultPinTheme: PinTheme(
                width: sWidth * 0.11,
                height: sWidth * 0.11,
                textStyle: textHeadMedium1.copyWith(fontSize: sWidth * .060),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kGreenLight.withOpacity(0.03),
                      offset: const Offset(0, 6),
                      blurRadius: 6,
                      spreadRadius: 2,
                    ),
                  ],
                  border: Border.all(color: kGreenPrimary),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            kHeight30,
            AuthCustomButtom(
                backgroundColor: kGreenPrimary,
                text: 'Verify OTP',
                onTap: () {
                  print('verify otp');
                  Navigator.pushReplacementNamed(context, Routes.bottomBar);
                })
          ],
        ),
      ),
    );
  }
}
