import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchFieldHomePage extends StatelessWidget {
  const CustomSearchFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for order here',
        hintStyle:
            textHeadRegular1.copyWith(color: kBluePrimary),
        suffixIcon: const Icon(Icons.search),
        contentPadding: const EdgeInsets.only(left: 10),
        border: OutlineInputBorder(
          borderRadius: kRadius5,
          borderSide: const BorderSide(
              color: kBluePrimary, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: kRadius5,
          borderSide:
              const BorderSide(color: kGreenPrimary),
        ),
      ),
    );
  }
}
