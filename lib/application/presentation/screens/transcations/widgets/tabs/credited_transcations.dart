import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/transcations_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditedTranscationsList extends StatefulWidget {
  const CreditedTranscationsList({
    super.key,
  });

  @override
  State<CreditedTranscationsList> createState() =>
      _CreditedTranscationsListState();
}

class _CreditedTranscationsListState extends State<CreditedTranscationsList> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context
            .read<TranscationBloc>()
            .add(const TranscationEvent.getCreditedTranscationsNextPage());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TranscationBloc, TranscationState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(color: kGreenPrimary));
        }
        if (state.creditedTranscations != null &&
            state.creditedTranscations!.isNotEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.getCreditedTranscations());
            },
            child: ListView.builder(
              itemCount: state.creditedTranscations?.length ?? 0,
              controller: controller,
              itemBuilder: (context, index) => TranscationListTile(
                  credited: true,
                  transcation: state.creditedTranscations![index]),
            ),
          );
        } else {
          return ErrorRefreshIndicator(
              onRefresh: () => context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.getCreditedTranscations()));
        }
      },
    );
  }
}
