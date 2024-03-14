import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/animations/shriking_animation.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopCoinPointsAvatar extends StatelessWidget {
  const TopCoinPointsAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
      builder: (context, state) {
        return Column(
          children: [
            AnimatedGrowShrinkContainer(
              child: CircleAvatar(
                radius: sWidth * 0.115,
                backgroundColor: klightGreen,
                child: CircleAvatar(
                  radius: sWidth * 0.10,
                  backgroundColor: kBluePrimary,
                  child: CircleAvatar(
                    radius: sWidth * 0.075,
                    backgroundImage: const AssetImage(iconNottoCoin),
                    backgroundColor: kBluePrimary,
                  ),
                ),
              ),
            ),
            kHeight10,
            Text(
              '${state.partnerProfile?.coins ?? 0} Points',
              style: textHeadBoldBig2,
            ),
            kHeight30,
          ],
        );
      },
    );
  }
}
