import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/add_pick_up/widgets/text_field_maker.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_elevated_buttton_long.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_model/add_pickup_partner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GlobalKey<FormState> pickupKey = GlobalKey<FormState>();

class ScreenAddPickUpPartner extends StatelessWidget {
  const ScreenAddPickUpPartner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Pickup Partner',
          style: textHeadBoldBig2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: pickupKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight50,
                TextFieldMaker(
                  headline: 'Name',
                  child: CustomTextFormField(
                    textCapitalization: TextCapitalization.words,
                      validate: Validate.notNull,
                      keyboardType: TextInputType.name,
                      controller:
                          context.read<PickupPartnerBloc>().nameControler,
                      hintText: 'Please enter name'),
                ),
                TextFieldMaker(
                  headline: 'Mobile Number',
                  child: CustomTextFormField(
                      validate: Validate.phone,
                      maxlength: 10,
                      controller:
                          context.read<PickupPartnerBloc>().phoneControler,
                      keyboardType: TextInputType.number,
                      hintText: '00000 00000'),
                ),
                kHeight50,
                BlocConsumer<PickupPartnerBloc, PickupPartnerState>(
                  listenWhen: (previous, current) =>
                      previous.partnerAddingLoader !=
                      current.partnerAddingLoader,
                  listener: (context, state) {
                    if (state.partnerAddingLoader) {
                      showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: CircularProgressIndicator(color: kBluePrimary),
                        ),
                      );
                    } else {
                      Navigator.of(context).pop();
                    }
                    if (state.message != null) {
                      showSnackBar(
                          context: context,
                          message: state.message!,
                          color: state.hasError ? kRed : kGreenPrimary);
                    }
                    if (state.pickupPersonAdded) {
                      Navigator.of(context).pop();
                    }
                  },
                  builder: (context, state) {
                    return ElevatedButtonLong(
                        onPressed: () {
                          if (pickupKey.currentState!.validate()) {
                            final AddPickupPartnerModel partner =
                                AddPickupPartnerModel(
                                    name: context
                                        .read<PickupPartnerBloc>()
                                        .nameControler
                                        .text
                                        .trim(),
                                    phone: context
                                        .read<PickupPartnerBloc>()
                                        .phoneControler
                                        .text
                                        .trim());
                            context.read<PickupPartnerBloc>().add(
                                  PickupPartnerEvent.addPickupPartner(
                                      addPickupPartnerModel: partner),
                                );
                          }
                        },
                        text: 'Create');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
