import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_appbar_session.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_screen_ordres_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<RoleBloc>().add(const RoleEvent.getRole());
    });
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [HomeScreenAppBar(), HomeScreenOrdersList()],
    );
  }
}
