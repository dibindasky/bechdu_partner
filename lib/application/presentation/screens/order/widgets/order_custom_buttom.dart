import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class OrdersCustomButton extends StatelessWidget {
  const OrdersCustomButton(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap,
      this.expnded = true});

  final String text;
  final String image;
  final VoidCallback onTap;
  final bool expnded;

  @override
  Widget build(BuildContext context) {
    return expnded
        ? Expanded(
            child: _body(),
          )
        : _body();
  }

  Widget _body() {
    return InkWell(
      onTap: onTap,
      child: Material(
        borderRadius: kRadius5,
        elevation: 5,
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: sWidth * 0.055, child: Image.asset(image)),
                  kWidth10,
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        text,
                        style: textHeadBold1.copyWith(fontSize: 14),
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

class OrderCustomButtonBottom extends StatelessWidget {
  const OrderCustomButtonBottom(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap,
      this.expnded = true});

  final String text;
  final String image;
  final VoidCallback onTap;
  final bool expnded;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        borderRadius: kRadius5,
        elevation: 5,
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: sWidth * 0.055, child: Image.asset(image)),
                  kWidth10,
                  Text(
                    text,
                    style: textHeadBold1.copyWith(fontSize: 14),
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
