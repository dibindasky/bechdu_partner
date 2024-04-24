import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_short_button.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/dialoge/dialoge.dart';
import 'package:bechdu_partner/data/feature/razorpay.dart';
import 'package:bechdu_partner/domain/model/transcaton/epay_model/epay_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PaymentMethod { epayment, cash }

PaymentMethod paymentMethod = PaymentMethod.epayment;

class AddCoinsDialoge extends StatefulWidget {
  const AddCoinsDialoge({
    super.key,
  });

  @override
  State<AddCoinsDialoge> createState() => _AddCoinsDialogeState();
}

class _AddCoinsDialogeState extends State<AddCoinsDialoge> {
  bool error = false;
  String errorMsg = '';
  @override
  void initState() {
    context.read<TranscationBloc>().priceController.text = '';
    context.read<TranscationBloc>().add(const TranscationEvent.calculateAmount(
        coins: 0, coinValue: 0, gstValue: 0));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kBluePrimary,
            child: SizedBox(
              width: sWidth * 0.80,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add Points',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: kWhite,
                          ),
                        )
                      ],
                    ),
                    FittedBox(
                      child: Text(
                        'Add More Points To Get Extra Discount',
                        style: textHeadRegular1.copyWith(color: kWhite),
                      ),
                    ),
                    kHeight10,
                    BlocBuilder<PointsBloc, PointsState>(
                      builder: (context, state) {
                        return ColoredBox(
                          color: kWhite,
                          child: TextField(
                            controller:
                                context.read<TranscationBloc>().priceController,
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              int coins = 0;
                              try {
                                coins = int.parse(context
                                    .read<TranscationBloc>()
                                    .priceController
                                    .text
                                    .trim());
                              } catch (e) {
                                e;
                              }
                              context.read<TranscationBloc>().add(
                                  TranscationEvent.calculateAmount(
                                      coinValue: state.coinValue ?? 0,
                                      gstValue: state.gst ?? 0,
                                      coins: coins));
                            },
                            cursorColor: kBluePrimary,
                            style: textHeadBoldBig,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                          ),
                        );
                      },
                    ),
                    kHeight5,
                    const Row(
                      children: [
                        AddCoinShortCutButton(coins: 100),
                        AddCoinShortCutButton(coins: 200),
                        AddCoinShortCutButton(coins: 300),
                        AddCoinShortCutButton(coins: 500)
                      ],
                    ),
                    kHeight20,
                    Text(
                      'Select Payment Mode',
                      style: textHeadBold1.copyWith(color: kWhite),
                    ),
                    kHeight10,
                    Row(
                      children: [
                        Radio(
                            activeColor: kWhite,
                            fillColor: MaterialStateProperty.all(kWhite),
                            value: PaymentMethod.epayment,
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        Text(
                          'E-Payment',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                        Radio(
                            activeColor: kWhite,
                            fillColor: MaterialStateProperty.all(kWhite),
                            value: PaymentMethod.cash,
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        Text(
                          'Cash',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                      ],
                    ),
                    paymentMethod == PaymentMethod.cash ? kHeight20 : kEmpty,
                    paymentMethod == PaymentMethod.cash
                        ? const CustomTextFileldPaymnet()
                        : kEmpty,
                    const UserAgrementPaymnetChekBox(),
                    kHeight10,
                    error
                        ? Text(errorMsg,
                            style: textHeadMedium1.copyWith(color: kRed))
                        : kEmpty,
                    error ? kHeight10 : kEmpty,
                    BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
                      builder: (context, partner) {
                        return BlocBuilder<PointsBloc, PointsState>(
                          builder: (context, point) {
                            return BlocConsumer<TranscationBloc,
                                TranscationState>(
                              listenWhen: (previous, current) =>
                                  current.gstError ||
                                  current.manuelTranscationDone,
                              listener: (context, state) {
                                if (state.gstError) {
                                  context
                                      .read<PointsBloc>()
                                      .add(const PointsEvent.getGst());
                                  context
                                      .read<PointsBloc>()
                                      .add(const PointsEvent.getCoinValue());
                                }
                                if (state.manuelTranscationDone) {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      Routes.bottomBar, (route) => false);
                                  Navigator.pushNamed(
                                      context, Routes.transcationPage);
                                }
                              },
                              builder: (context, state) {
                                return Center(
                                  child: InkWell(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      if (state.amountPayable == null ||
                                          state.amountPayable == 0.0) {
                                        setState(() {
                                          error = true;
                                          errorMsg =
                                              'Enter the quantity of coins you want to purchase.';
                                        });
                                      } else if (paymentMethod ==
                                              PaymentMethod.cash &&
                                          state.reciept == null) {
                                        setState(() {
                                          error = true;
                                          errorMsg =
                                              'Upload your payment reciept.';
                                        });
                                      } else if (!state.agreePolicys) {
                                        setState(() {
                                          error = true;
                                          errorMsg =
                                              'without agree to the GST and INC policy we cant move forward';
                                        });
                                      } else if (state.agreePolicys &&
                                          state.amountPayable != null &&
                                          state.amountPayable != 0.0 &&
                                          paymentMethod == PaymentMethod.cash) {
                                        context.read<TranscationBloc>().add(
                                              TranscationEvent
                                                  .makeManuelTranscationRequest(
                                                      gst: point.gst ?? 0,
                                                      coinValue:
                                                          point.coinValue ?? 0),
                                            );
                                      } else if (state.agreePolicys &&
                                          state.amountPayable != null &&
                                          state.amountPayable != 0.0 &&
                                          paymentMethod ==
                                              PaymentMethod.epayment) {
                                        final coins = int.parse(context
                                            .read<TranscationBloc>()
                                            .priceController
                                            .text
                                            .trim());
                                        EpayModel epayModel = EpayModel(
                                            coins: coins,
                                            gstPercentage: point.gst,
                                            gstPrice:
                                                (coins * point.coinValue!) *
                                                    (point.gst! / 100),
                                            price: coins *
                                                point.coinValue!
                                                    .toDouble()
                                                    .floorToDouble());
                                        RazorpayGateway(context).makePayment(
                                            epayModel: epayModel,
                                            amount: 1,
                                            description:
                                                'payment for $coins coin',
                                            email:
                                                partner.partnerProfile?.email ??
                                                    '',
                                            phone:
                                                partner.partnerProfile?.phone ??
                                                    '');
                                      }
                                    },
                                    child: state.manuelTranscationsLoading
                                        ? const Center(
                                            child: CircularProgressIndicator(
                                                color: kWhite),
                                          )
                                        : ClipRRect(
                                            borderRadius: kRadius5,
                                            child: ColoredBox(
                                              color: kWhite,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 30,
                                                        vertical: 10),
                                                child: Text(
                                                  state.amountPayable == null ||
                                                          state.amountPayable ==
                                                              0.0
                                                      ? 'Add Coins'
                                                      : paymentMethod ==
                                                              PaymentMethod
                                                                  .epayment
                                                          ? 'Pay ₹${state.amountPayable}'
                                                          : 'Proceed\n₹${state.amountPayable}',
                                                  style: textHeadBoldBig,
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFileldPaymnet extends StatelessWidget {
  const CustomTextFileldPaymnet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // upload receipt here
        showCustomDialoge(
            context: context,
            title: 'Choose Image From !',
            buttonText: 'Camera',
            cancelButtonText: 'Gallery',
            onCancelTap: () {
              context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.uploadReciept(cam: false));
            },
            onTap: () {
              context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.uploadReciept(cam: true));
            });
      },
      child: BlocBuilder<TranscationBloc, TranscationState>(
        builder: (context, state) {
          return TextField(
            enabled: false,
            cursorColor: kBluePrimary,
            style: textHeadRegular1.copyWith(color: kWhite),
            decoration: InputDecoration(
              hintText: state.reciept != null
                  ? 'Proceed to continue'
                  : 'Upload The Receipt here',
              hintStyle: textHeadRegular1.copyWith(color: kWhite),
              suffixIcon: const Icon(
                Icons.file_upload_outlined,
                color: kWhite,
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kWhite)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kWhite)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: kWhite)),
              contentPadding: const EdgeInsets.only(left: 10),
            ),
          );
        },
      ),
    );
  }
}

class UserAgrementPaymnetChekBox extends StatelessWidget {
  const UserAgrementPaymnetChekBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        BlocBuilder<TranscationBloc, TranscationState>(
          builder: (context, state) {
            return Checkbox(
              value: state.agreePolicys,
              onChanged: (value) {
                context
                    .read<TranscationBloc>()
                    .add(const TranscationEvent.agreePolicy());
              },
              checkColor: kBluePrimary,
              activeColor: kWhite,
              side: const BorderSide(color: kWhite),
            );
          },
        ),
        Expanded(
          child: Text(
            'By signing up I agree to the INC and GST taxes.',
            style: TextStyle(
                fontFamily: gilroyRegular,
                color: kWhite,
                fontSize: sWidth * 0.03),
          ),
        ),
        kWidth10,
      ],
    );
  }
}
