import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/get_pickup_partner_response_model/pick_up_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickupPartnerListTile extends StatelessWidget {
  const PickupPartnerListTile({
    super.key,
    required this.pickUpPerson,
    required this.index,
  });

  final PickUpPerson pickUpPerson;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.pickUpProfilePage,
          arguments: index),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: kBluePrimary,
          child: Icon(Icons.person, color: kWhite),
        ),
        title: Text(
          pickUpPerson.name ?? '',
          style: textHeadSemiBold1,
        ),
        subtitle: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                pickUpPerson.phone ?? '',
                style: textHeadSemiBold1.copyWith(color: kGreyLight),
              ),
            ),
            kWidth10,
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle_sharp,
                    color: pickUpPerson.status == 'active'
                        ? klightGreen
                        : kRedLight,
                    size: sWidth * 0.03,
                  ),
                  kWidth10,
                  Text(
                    pickUpPerson.status == 'active' ? 'Active' : 'Blocked',
                    style: textHeadSemiBold1.copyWith(color: kGreyLight),
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: PopupMenuButton(
            color: kWhite,
            icon: const RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.more_vert_rounded,
                color: kGreyLight,
              ),
            ),
            itemBuilder: (context) => ([
                  PopupMenuItem(
                      onTap: () {
                        pickUpPerson.status == 'active'
                            ? context.read<PickupPartnerBloc>().add(
                                PickupPartnerEvent.blocPickupPartners(
                                    id: pickUpPerson.id!))
                            : context.read<PickupPartnerBloc>().add(
                                PickupPartnerEvent.unBlocPickupPartners(
                                    id: pickUpPerson.id!));
                      },
                      child: Text(pickUpPerson.status == 'active'
                          ? 'Block'
                          : 'UnBlock'))
                ])),
      ),
    );
  }
}
