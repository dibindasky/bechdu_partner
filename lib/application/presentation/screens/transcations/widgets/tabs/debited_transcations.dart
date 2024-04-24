import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/transcations_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DebitedTranscationsList extends StatefulWidget {
  const DebitedTranscationsList({
    super.key,
  });

  @override
  State<DebitedTranscationsList> createState() =>
      _DebitedTranscationsListState();
}

class _DebitedTranscationsListState extends State<DebitedTranscationsList> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context
            .read<TranscationBloc>()
            .add(const TranscationEvent.getDebitedTranscationsNextPage());
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
    return BlocConsumer<TranscationBloc, TranscationState>(
      listener: (context, state) {
        if (state.downloaded && state.invoice != null) {
          Navigator.pushNamed(context, Routes.pdfPage,
              arguments: state.invoice!);
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(color: kGreenPrimary));
        }
        if (state.debitedTranscations != null &&
            state.debitedTranscations!.isNotEmpty) {
          int len = state.debitedLoading
              ? state.debitedTranscations!.length + 1
              : state.debitedTranscations!.length;
          return RefreshIndicator(
            onRefresh: () async {
              context.read<TranscationBloc>().add(
                  const TranscationEvent.getDebitedTranscations(call: true));
              context.read<TranscationBloc>().add(
                  const TranscationEvent.getManuelTransactions(call: true));
            },
            child: ListView.builder(
              itemCount: len < 6 ? len + 1 : len,
              controller: controller,
              itemBuilder: (context, index) {
                if (len < 6 && !state.debitedLoading) {
                  if (index >= len) {
                    return SizedBox(height: 1000, width: sWidth);
                  } else {
                    return TranscationListTile(
                        credited: false,
                        transcation: state.debitedTranscations![index]);
                  }
                }
                if (index == state.debitedTranscations!.length) {
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
                    credited: false,
                    transcation: state.debitedTranscations![index]);
              },
            ),
          );
        } else if (state.debitedTranscations == null) {
          return ErrorRefreshIndicator(onRefresh: () {
            context
                .read<TranscationBloc>()
                .add(const TranscationEvent.getDebitedTranscations(call: true));
            context
                .read<TranscationBloc>()
                .add(const TranscationEvent.getManuelTransactions(call: true));
            context
                .read<PickupPartnerBloc>()
                .add(const PickupPartnerEvent.getPartnerProfile());
          });
        } else {
          return ErrorRefreshIndicator(
              errorMessage: 'No Transcations yet',
              onRefresh: () {
                context.read<TranscationBloc>().add(
                    const TranscationEvent.getDebitedTranscations(call: true));
                context.read<TranscationBloc>().add(
                    const TranscationEvent.getManuelTransactions(call: true));
              });
        }
      },
    );
  }
}
