import 'package:flutter/material.dart';

class BottomIconMaker extends StatelessWidget {
  const BottomIconMaker({
    super.key,
    required this.image,
    this.ontap,
  });

  final String image;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (ontap != null) {
          ontap!();
        }
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
