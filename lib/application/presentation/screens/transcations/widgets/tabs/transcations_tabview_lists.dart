import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/credited_transcations.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/debited_transcations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranscationsTabViewList extends StatelessWidget {
  const TranscationsTabViewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: BlocBuilder<TranscationBloc, TranscationState>(
      buildWhen: (previous, current) =>
          previous.isCreditedTab != current.isCreditedTab,
      builder: (context, state) {
        if (state.isCreditedTab) {
          return const CreditedTranscationsList();
        } else {
          return const DebitedTranscationsList();
        }
      },
    ));
  }
}
