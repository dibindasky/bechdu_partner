import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({
    Key? key,
    required this.itemCount,
    required this.height,
    required this.width,
    this.seprator = const SizedBox(),
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  final int itemCount;
  final double height;
  final double width;
  final Axis scrollDirection;
  final Widget seprator;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => seprator,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 248, 246, 246),
          highlightColor: const Color.fromARGB(255, 224, 223, 223),
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: kGreyLight,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
      },
    );
  }
}
