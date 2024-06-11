import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PendingTranscationSession extends StatelessWidget {
  const PendingTranscationSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TranscationBloc, TranscationState>(
      builder: (context, state) {
        if (state.isLoading) {
          return ShimmerLoader(
              itemCount: 1,
              height: 180,
              width: sWidth,
              scrollDirection: Axis.vertical);
        } else if (state.manuelTranscations != null &&
            state.manuelTranscations!.isNotEmpty) {
          return SizedBox(
            height: 230,
            child: PageView.builder(
                itemCount: state.manuelTranscations?.length ?? 0,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final data = state.manuelTranscations![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${getFirstCapital(data.status)} Transaction',
                            style: textHeadBoldBig),
                        kHeight10,
                        Container(
                          height: 168,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(), borderRadius: kRadius15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                kHeight10,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          '${data.coins ?? '--'} Points',
                                          overflow: TextOverflow.ellipsis,
                                          style: textHeadMediumBig.copyWith(
                                              fontSize: sWidth * 0.06)),
                                    ),
                                    Text('₹ ${data.totalPrice ?? '----'}',
                                        // overflow: TextOverflow.visible,
                                        style: textHeadBoldBig2.copyWith(
                                            color: data.status == 'approved'
                                                ? kGreenPrimary
                                                : kRedDark))
                                  ],
                                ),
                                kHeight20,
                                ColoredBox(
                                  color: kBluelight,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      kWidth5,
                                      Expanded(
                                        child: Text(
                                          data.status == 'Pending'
                                              ? 'Points will be credited, when admin verify your transcation'
                                              : data.message ?? '',
                                          style: textHeadRegular1,
                                        ),
                                      ),
                                      kWidth10,
                                      Icon(
                                        Icons.circle,
                                        size: 10,
                                        color: getTranscationStatusColor(
                                            data.status ?? ''),
                                      ),
                                      data.status == 'Pending'
                                          ? kEmpty
                                          : Text(
                                              ' ${getFirstCapital(data.status)}',
                                              style: textHeadSemiBold1.copyWith(
                                                  color:
                                                      getTranscationStatusColor(
                                                          data.status ?? '')),
                                            ),
                                      kWidth5
                                    ],
                                  ),
                                ),
                                kHeight10,
                              ]),
                        ),
                        kHeight20
                      ],
                    ),
                  );
                }),
          );
        } else {
          return kEmpty;
        }
      },
    );
  }
}
