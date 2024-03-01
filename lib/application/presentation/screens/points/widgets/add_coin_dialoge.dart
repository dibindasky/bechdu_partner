import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_short_button.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

final TextEditingController priceController = TextEditingController();
final TextEditingController upiController = TextEditingController();

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
  @override
  Widget build(BuildContext context) {
    return Dialog(
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
                  Text(
                    'Add More Points To Get Extra Discount',
                    style: textHeadRegular1.copyWith(color: kWhite),
                  ),
                  kHeight10,
                  ColoredBox(
                    color: kWhite,
                    child: TextField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      cursorColor: kBluePrimary,
                      style: textHeadBoldBig,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                    ),
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
                  kHeight20,
                  CustomTextFileldPaymnet(paymentMethod: paymentMethod),
                  kHeight5,
                  Text(
                    'Payment link will be sent to the given UPI ID app. please comeback after completing the payment.',
                    style: TextStyle(
                        fontFamily: gilroyRegular,
                        color: kWhite,
                        fontSize: sWidth * 0.03),
                  ),
                  const UserAgrementPaymnetChekBox(),
                  kHeight10,
                  Center(
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: kRadius5,
                        child: ColoredBox(
                          color: kWhite,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Text(
                              paymentMethod == PaymentMethod.epayment
                                  ? 'Pay ₹5,000'
                                  : 'Proceed',
                              style: textHeadBoldBig,
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
      ),
    );
  }
}

class CustomTextFileldPaymnet extends StatelessWidget {
  const CustomTextFileldPaymnet({
    super.key,
    required this.paymentMethod,
  });

  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (paymentMethod == PaymentMethod.cash) {
          // upload receipt here
        }
      },
      child: TextField(
        enabled: paymentMethod == PaymentMethod.epayment,
        controller: upiController,
        cursorColor: kBluePrimary,
        style: textHeadRegular1.copyWith(color: kWhite),
        decoration: InputDecoration(
          hintText: paymentMethod == PaymentMethod.epayment
              ? 'Enter UPI ID'
              : 'Upload The Receipt here',
          hintStyle: textHeadRegular1.copyWith(color: kWhite),
          suffixIcon: paymentMethod == PaymentMethod.epayment
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // verify upi id here;
                      },
                      child: Text('Verify',
                          style: textHeadBold1.copyWith(color: kWhite)),
                    ),
                  ],
                )
              : const Icon(
                  Icons.file_upload_outlined,
                  color: kWhite,
                ),
          enabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: kWhite)),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: kWhite)),
          border:
              const OutlineInputBorder(borderSide: BorderSide(color: kWhite)),
          contentPadding: const EdgeInsets.only(left: 10),
        ),
      ),
    );
  }
}

class UserAgrementPaymnetChekBox extends StatefulWidget {
  const UserAgrementPaymnetChekBox({
    super.key,
  });

  @override
  State<UserAgrementPaymnetChekBox> createState() =>
      _UserAgrementPaymnetChekBoxState();
}

class _UserAgrementPaymnetChekBoxState
    extends State<UserAgrementPaymnetChekBox> {
  bool marked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        Checkbox(
          value: marked,
          onChanged: (value) {
            setState(() {
              marked = !marked;
            });
          },
          checkColor: kBluePrimary,
          activeColor: kWhite,
          side: const BorderSide(color: kWhite),
        ),
        Text(
          'By signing up I agree to the INC and GST taxes.',
          style: TextStyle(
              fontFamily: gilroyRegular,
              color: kWhite,
              fontSize: sWidth * 0.03),
        ),
      ],
    );
  }
}
