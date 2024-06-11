import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/time/time_maker.dart';
import 'package:bechdu_partner/domain/model/transcaton/get_credited_transcations_response_model/transcation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranscationListTile extends StatefulWidget {
  const TranscationListTile({
    super.key,
    required this.transcation,
    required this.credited,
  });

  final Transcation transcation;
  final bool credited;

  @override
  State<TranscationListTile> createState() => _TranscationListTileState();
}

class _TranscationListTileState extends State<TranscationListTile> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.transcation.paymentId != null) {
          context.read<TranscationBloc>().add(
              TranscationEvent.downloadInvoice(id: widget.transcation.id!));
          loading = true;
        }
      },
      child: BlocConsumer<TranscationBloc, TranscationState>(
        listener: (context, state) {
          if (state.downloaded) {
            loading = false;
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
            child: Material(
              elevation: 5,
              borderRadius: kRadius15,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.transcation.message ?? '',
                        softWrap: true, style: textHeadBold1),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.calendar_month, color: kGreyLight),
                        kWidth10,
                        Expanded(
                          child: Text(
                              formatDateTime(widget.transcation.timestamp!),
                              softWrap: true,
                              style:
                                  textHeadMedium1.copyWith(color: kGreyLight)),
                        )
                      ],
                    ),
                    trailing: SizedBox(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Text(
                                '${widget.credited ? '+' : '-'} ${widget.transcation.coins ?? 0} points',
                                style: textHeadBold1.copyWith(
                                    color: widget.credited
                                        ? kGreenPrimary
                                        : kRedDark)),
                          ),
                          kHeight5,
                          widget.transcation.paymentId != null
                              ? const Expanded(
                                  child: Icon(Icons.picture_as_pdf))
                              : kEmpty
                        ],
                      ),
                    ),
                  ),
                  state.downloading && loading
                      ? LinearProgressIndicator(
                          color: kGreenPrimary,
                          borderRadius: kRadius5,
                        )
                      : kEmpty
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
