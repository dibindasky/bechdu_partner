import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/completed_transcations.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/pending_transcations.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenTranscations extends StatelessWidget {
  const ScreenTranscations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions', style: textHeadBoldBig2),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PendingTranscationSession(),
            CompletedTranscationSession()
          ],
        ),
      ),
    );
  }
}
