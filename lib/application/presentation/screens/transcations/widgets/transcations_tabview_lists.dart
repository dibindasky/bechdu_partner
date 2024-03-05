import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranscationsTabViewList extends StatelessWidget {
  const TranscationsTabViewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<TranscationBloc, TranscationState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
            child: Material(
              elevation: 5,
              borderRadius: kRadius15,
              child: ListTile(
                title: Text('Iphone 11', style: textHeadBold1),
                subtitle: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.calendar_month, color: kGreyLight),
                    kWidth10,
                    Text('22 jan 24 16:34',
                        style: textHeadMedium1.copyWith(color: kGreyLight))
                  ],
                ),
                trailing: Text(
                    state.isCreditedTab ? '+500 points' : '-120 points',
                    style: textHeadBoldBig.copyWith(
                        color: state.isCreditedTab ? kGreenPrimary : kRedDark)),
              ),
            ),
          ),
        );
      },
    ));
  }
}
