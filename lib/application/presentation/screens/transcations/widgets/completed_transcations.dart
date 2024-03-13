import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/transcation_tabs.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/transcations_tabview_lists.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CompletedTranscationSession extends StatelessWidget {
  const CompletedTranscationSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Completed Transaction', style: textHeadBoldBig),
          kHeight10,
          const TranscationTabBar(),
          kHeight10,
          const TranscationsTabViewList()
        ],
      ),
    );
  }
}
