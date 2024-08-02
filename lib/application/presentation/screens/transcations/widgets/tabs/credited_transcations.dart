import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/tabs/transcations_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/pdf/pdf_preview.dart';
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
    return BlocConsumer<TranscationBloc, TranscationState>(
      listener: (context, state) {
        if (state.downloaded && state.invoice != null) {
          Navigator.pushNamed(context, Routes.pdfPage,
              arguments: PreviewArguments(
                  base64: state.invoice!, fileName: 'Transcation'));
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(color: kGreenPrimary));
        }
        if (state.creditedTranscations != null &&
            state.creditedTranscations!.isNotEmpty) {
          int len = state.creditedLoading
              ? state.creditedTranscations!.length + 1
              : state.creditedTranscations!.length;
          return RefreshIndicator(
            onRefresh: () async {
              context.read<TranscationBloc>().add(
                  const TranscationEvent.getCreditedTranscations(call: true));
              context.read<TranscationBloc>().add(
                  const TranscationEvent.getManuelTransactions(call: true));
              context
                  .read<PickupPartnerBloc>()
                  .add(const PickupPartnerEvent.getPartnerProfile());
            },
            child: ListView.builder(
              itemCount: len < 6 ? len + 1 : len,
              controller: controller,
              itemBuilder: (context, index) {
                if (len < 6 && !state.creditedLoading) {
                  if (index >= len) {
                    return SizedBox(height: 1000, width: sWidth);
                  } else {
                    return TranscationListTile(
                        credited: true,
                        transcation: state.creditedTranscations![index]);
                  }
                }
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
          return ErrorRefreshIndicator(onRefresh: () {
            context.read<TranscationBloc>().add(
                const TranscationEvent.getCreditedTranscations(call: true));
            context
                .read<TranscationBloc>()
                .add(const TranscationEvent.getManuelTransactions(call: true));
          });
        } else {
          return ErrorRefreshIndicator(
              errorMessage: 'No Transcations yet',
              onRefresh: () {
                context.read<TranscationBloc>().add(
                    const TranscationEvent.getCreditedTranscations(call: true));
                context.read<TranscationBloc>().add(
                    const TranscationEvent.getManuelTransactions(call: true));
              });
        }
      },
    );
  }
}
