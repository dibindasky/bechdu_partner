import 'dart:math';

import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/domain/model/transcaton/epay_model/epay_model.dart';
import 'package:bechdu_partner/secret/secret_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayGateway {
  final BuildContext context;
  final _razorpay = Razorpay();
  EpayModel epayModel = EpayModel();
  RazorpayGateway(this.context) {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void dispose() {
    _razorpay.clear();
  }

  Future<void> makePayment(
      {required double amount,
      required EpayModel epayModel,
      required String description,
      required String email,
      required String phone}) async {
    this.epayModel = epayModel;
    var options = {
      'key': keyId,
      'amount': amount * 100, // Amount in paise
      'name': 'Bechdu',
      'description': description,
      "entity": "order",
      "currency": "INR",
      "status": "created",
      "notes": [],
      // 'timeout': 60,
      'prefill': {
        'email': email, // User's email address
        'contact': phone, // User's phone number
      },
      'external': {
        'wallets': ['paytm'] // Example: Enable Paytm wallet
      },
      'method': {
        'netbanking': true,
        'card': true,
        'upi': true,
        'wallet': true,
      },
    };

    try {
      _razorpay.open(options);
    } on PlatformException catch (e) {
      print('razorpay platform exception');
      print(e.message);
    } catch (e) {
      print('razorpay exception');
      print(e.toString()); // Handle errors
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Process successful payment (e.g., display success message)
    print('=========Payment successful: $response');
    print('=========Payment successful: ${response.paymentId}');
    this.epayModel.paymentId = response.paymentId ?? '';
    context
        .read<TranscationBloc>()
        .add(TranscationEvent.makeEpaymetns(epayModel: epayModel));
    Navigator.pop(context);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Handle payment failure (e.g., display error message)
    print('==========Payment failed: $response');
    showSnackBar(context: context, message: 'Payement failed', color: kRedDark);
    Navigator.pop(context);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet selection (e.g., display message)
    print('=============External wallet selected: ${response.walletName}');
    showSnackBar(context: context, message: 'Payement failed', color: kRedDark);
    Navigator.pop(context);
  }
}
