import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/transcations_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
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
  void dispose() {
    controller.dispose();
    super.dispose();
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
              itemCount: state.creditedLoading
                  ? state.creditedTranscations!.length + 1
                  : state.creditedTranscations!.length,
              controller: controller,
              itemBuilder: (context, index) {
                if (index == state.creditedTranscations!.length) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ShimmerLoader(
                        itemCount: 1,
                        height: 60,
                        width: sWidth,
                        seprator: kHeight10),
                  );
                }
                return TranscationListTile(
                    credited: true,
                    transcation: state.creditedTranscations![index]);
              },
            ),
          );
        } else if (state.creditedTranscations == null) {
          return ErrorRefreshIndicator(
              onRefresh: () => context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.getCreditedTranscations()));
        } else {
          return ErrorRefreshIndicator(
              errorMessage: 'No Transcations yet',
              onRefresh: () => context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.getCreditedTranscations()));
        }
      },
    );
  }
}
