import 'package:bechdu_partner/application/presentation/screens/auth/widgets/login/login_first_half.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/login/login_page_second_half.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginPageFirstHalfContainer(),
            kHeight20,
            LoginPageSecondHalf()
          ],
        ),
      ),
    );
  }
}

// class ScreenLogin extends StatefulWidget {
//   const ScreenLogin({super.key});

//   @override
//   State<ScreenLogin> createState() => _ScreenLoginState();
// }

// class _ScreenLoginState extends State<ScreenLogin> {

//   // final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   final TextEditingController phoneController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           kHeight50,
//           TextField(
//             controller: phoneController,
//             // controller: context.read<AuthBloc>().phoneController,
//             style: textHeadMedium1,
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(
//               enabledBorder: OutlineInputBorder(
//                   gapPadding: 2,
//                   borderRadius: kRadius10,
//                   borderSide: const BorderSide(color: kBlack)),
//               hintText: "hintText",
//               hintStyle: textHeadMedium1.copyWith(color: kGreyLight),
//               border: OutlineInputBorder(
//                   gapPadding: 2,
//                   borderSide: const BorderSide(color: kGreyLight),
//                   borderRadius: kRadius10),
//             ),
//           ),
//           ElevatedButton(onPressed: () {}, child: Text('button'))
//         ],
//       ),
//     );
//   }
// }
