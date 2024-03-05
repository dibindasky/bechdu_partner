import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes_generator.dart';
import 'package:bechdu_partner/domain/core/di/dipendency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await configuteInjection();
  runApp(Beachdu());
}

class Beachdu extends StatelessWidget {
  Beachdu({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<RequoteBloc>()),
        BlocProvider(create: (context) => getIt<OrdersBloc>()),
        BlocProvider(create: (context) => getIt<TranscationBloc>()),
        BlocProvider(create: (context) => getIt<PickupPartnerBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
