import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/completed_transcations.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/pending_transcations.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenTranscations extends StatelessWidget {
  const ScreenTranscations({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<TranscationBloc>()
          .add(const TranscationEvent.getManuelTransactions(call:false));
      context
          .read<TranscationBloc>()
          .add(const TranscationEvent.getCreditedTranscations(call:false));
      context
          .read<TranscationBloc>()
          .add(const TranscationEvent.getDebitedTranscations(call:false));
    });
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
