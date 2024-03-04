import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_bottom_sheet_assign_partner.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/partner.dart';
import 'package:flutter/material.dart';

class PartnerDetailTile extends StatelessWidget {
  const PartnerDetailTile({super.key, required this.partner});

  final Partner? partner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        borderRadius: kRadius5,
        elevation: 5,
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kWhite,
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(phoneImageNetwork)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(partner?.pickUpPersonName=='' ? 'Assign pickup':partner?.pickUpPersonName??'', style: textHeadBold1),
                  StatusColoredBox(
                    text: partner?.pickUpPersonName != ''
                        ? 'Change Partner'
                        : 'Assign Partner',
                    color: kBluePrimary,
                    onTap: () {
                      showBottomSheetAssignPartner(context);
                    },
                  )
                ],
              ),
              // subtitle: SizedBox(
              //   width: sWidth * 0.2,
              //   child: Row(
              //     children: [
              //       Text('25 Orders',
              //           style: textHeadSemiBold1.copyWith(color: kGreyLight)),
              //       kWidth10,
              //       Text('Out For Pickup', style: textHeadSemiBold1)
              //     ],
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
