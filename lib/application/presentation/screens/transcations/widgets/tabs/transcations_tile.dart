import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/transcaton/get_credited_transcations_response_model/transcation.dart';
import 'package:flutter/material.dart';

class TranscationListTile extends StatelessWidget {
  const TranscationListTile({
    super.key,
    required this.transcation,
    required this.credited,
  });

  final Transcation transcation;
  final bool credited;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      child: Material(
        elevation: 5,
        borderRadius: kRadius15,
        child: ListTile(
          title: Text(transcation.message ?? '', style: textHeadBold1),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.calendar_month, color: kGreyLight),
              kWidth10,
              Text(
                  '${transcation.timestamp!.day} ${transcation.timestamp!.month} ${transcation.timestamp!.year}',
                  style: textHeadMedium1.copyWith(color: kGreyLight))
            ],
          ),
          trailing: Text(
              '${credited ? '+' : '-'} ${transcation.coins ?? 0} points',
              style: textHeadBoldBig.copyWith(
                  color: credited ? kGreenPrimary : kRedDark)),
        ),
      ),
    );
  }
}
