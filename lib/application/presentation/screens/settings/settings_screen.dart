import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: textHeadBoldBig2),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: sWidth * 0.16,
                backgroundColor: kGreenPrimary,
                child: CircleAvatar(
                  radius: sWidth * 0.15,
                  backgroundColor: kBluePrimary,
                  child: Text(
                    'JG',
                    style: textHeadBoldBig2.copyWith(
                        color: kWhite, fontSize: sWidth * 0.15),
                  ),
                ),
              ),
              kHeight40,
              UserDetailTile(
                  controller: TextEditingController(),
                  headline: 'Username',
                  text: 'Jaisai gopisetty'),
              UserDetailTile(
                  controller: TextEditingController(),
                  headline: 'Email',
                  text: 'Jaisai@gmail.com'),
              UserDetailTile(
                  controller: TextEditingController(),
                  headline: 'Mobile Number',
                  text: '0000 000 000'),
              const SizedBox(height: 100),
              AuthCustomButtom(
                  onTap: () {}, text: 'Save', backgroundColor: kGreenPrimary),
              kHeight50
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailTile extends StatefulWidget {
  const UserDetailTile(
      {super.key,
      required this.headline,
      required this.text,
      this.onTap,
      required this.controller});

  final String headline;
  final String text;
  final VoidCallback? onTap;
  final TextEditingController controller;

  @override
  State<UserDetailTile> createState() => _UserDetailTileState();
}

class _UserDetailTileState extends State<UserDetailTile> {
  bool showEdit = false;

  @override
  void initState() {
    widget.controller.text = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.headline,
            style: textHeadMedium1.copyWith(color: kGreyLight)),
        kHeight10,
        showEdit
            ? TextField(
                controller: widget.controller,
                style: textHeadBoldBig,
                decoration: const InputDecoration(border: InputBorder.none),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(' ${widget.text}', style: textHeadBoldBig),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showEdit = !showEdit;
                      });
                      if (widget.onTap != null) {
                        widget.onTap!();
                      }
                    },
                    child: Text(
                      'Change  ',
                      style: textHeadRegular1.copyWith(
                          color: kBlue, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
        const Divider(color: kBlack),
        kHeight20,
      ],
    );
  }
}
