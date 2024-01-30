// import 'package:bechdu_partner/application/presentation/utils/colors.dart';
// import 'package:bechdu_partner/application/presentation/utils/constant.dart';
// import 'package:flutter/material.dart';

// class PhoneDetailTileOrder extends StatelessWidget {
//   const PhoneDetailTileOrder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: kRadius10,
//       child: ColoredBox(
//         color: kWhite,
//         child: SizedBox(
//           width: double.infinity,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: sWidth * 0.25,
//                 width: sWidth * 0.33,
//                 child: FittedBox(
//                     child: Image.asset(
//                   phoneImage,
//                   fit: BoxFit.cover,
//                 )),
//               ),
//               kWidth20,
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Iphone 11',
//                     style: textHeadRegularBig,
//                   ),kHeight5,
//                   Text(
//                     '₹ 11,999',
//                     style: textHeadRegularBig.copyWith(color: kGreyLight),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
