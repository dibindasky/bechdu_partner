import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/clipper/vertical_curves.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/feature/url_launcher_service.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/get_pickup_partner_response_model/pick_up_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> showBottomSheetAssignPartner(
    BuildContext context, String orderId) {
  return showModalBottomSheet(
    backgroundColor: knill,
    context: context,
    builder: (context) {
      PickUpPerson? selectedPickup;
      return ClipPath(
        clipper: VerticalCurvesClipper(),
        child: ColoredBox(
          color: kWhite,
          child: SizedBox(
            height: sHeight * 0.55,
            width: sWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: sHeight * 0.08),
                Material(
                    borderRadius: kRadius5,
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: kRadius5,
                      child: const ColoredBox(
                        color: kGreyDark,
                        child: SizedBox(height: 5, width: 70),
                      ),
                    )),
                kHeight30,
                Expanded(
                  child: BlocConsumer<PickupPartnerBloc, PickupPartnerState>(
                    listenWhen: (previous, current) =>
                        previous.assigningOrderLoader && current.orderAssigned,
                    listener: (context, state) {
                      if (selectedPickup != null) {
                        // context.read<OrdersBloc>().add(
                        //     OrdersEvent.changePickupPartner(
                        //         pickUpPerson: selectedPickup!,
                        //         orderId: orderId));
                      }
                    },
                    builder: (context, state) {
                      if (state.pickUpPersons == null ||
                          state.pickUpPersons == []) {
                        return Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.addPickUpPage);
                                },
                                child:
                                    const CircleAvatar(child: Icon(Icons.add))),
                            Text('Add PickUpPartner', style: textHeadBold1),
                            kHeight30,
                            const Text('no partner available'),
                          ],
                        );
                      } else {
                        final list = state.pickUpPersons!
                            .where((element) => element.status != 'blocked')
                            .toList();
                        if (list.isEmpty) {
                          return Column(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.addPickUpPage);
                                  },
                                  child: const CircleAvatar(
                                      child: Icon(Icons.add))),
                              Text('Add PickUpPartner', style: textHeadBold1),
                              kHeight30,
                              const Text('no partner available'),
                            ],
                          );
                        }
                        return ListView.builder(
                          itemCount: list.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final data = list[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: ClipRRect(
                                borderRadius: kRadius5,
                                child: ColoredBox(
                                  color: kBluelight,
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.person_3_outlined,
                                      color: kGreenPrimary,
                                    ),
                                    title: Text(data.phone ?? '',
                                        style: textHeadMedium1),
                                    subtitle: Text(data.name ?? '',
                                        style: textHeadBold1),
                                    trailing: SizedBox(
                                      width: sWidth * 0.3,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () =>
                                                OpenLauncherFeature.launchPhone(
                                                    phone: data.phone ?? ''),
                                            child: CircleAvatar(
                                              radius: sWidth * 0.04,
                                              backgroundColor: kBluePrimary,
                                              child: Icon(
                                                Icons.phone,
                                                color: kWhite,
                                                size: sWidth * 0.05,
                                              ),
                                            ),
                                          ),
                                          kWidth10,
                                          InkWell(
                                            onTap: () {
                                              context
                                                  .read<PickupPartnerBloc>()
                                                  .add(PickupPartnerEvent
                                                      .assignOrderToPickupPartner(
                                                          partnerId: data.id!,
                                                          orderId: orderId));
                                              selectedPickup = data;
                                              Navigator.of(context).pop();
                                            },
                                            child: ClipRRect(
                                              borderRadius: kRadius5,
                                              child: ColoredBox(
                                                color: kBluePrimary,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 15,
                                                      vertical: 5),
                                                  child: Text(
                                                    'Assign',
                                                    style: textHeadMedium1
                                                        .copyWith(
                                                            color: kWhite),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
