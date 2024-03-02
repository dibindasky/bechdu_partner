// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart'
    as _i10;
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart'
    as _i6;
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart'
    as _i7;
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart'
    as _i15;
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart'
    as _i8;
import 'package:bechdu_partner/data/service/api_service.dart' as _i9;
import 'package:bechdu_partner/data/service/auth/auth_service.dart' as _i4;
import 'package:bechdu_partner/data/service/order/order_service.dart' as _i12;
import 'package:bechdu_partner/data/service/pickup_partner/pickup_partner.dart'
    as _i14;
import 'package:bechdu_partner/domain/core/dio_module/dio_module.dart' as _i16;
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart' as _i3;
import 'package:bechdu_partner/domain/repository/service/order_repo.dart'
    as _i11;
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart'
    as _i13;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.AuthRepo>(() => _i4.AuthService());
    gh.lazySingleton<_i5.Dio>(() => dioModule.dioInstance);
    gh.factory<_i6.OrdersBloc>(() => _i6.OrdersBloc());
    gh.factory<_i7.RequoteBloc>(() => _i7.RequoteBloc());
    gh.factory<_i8.TranscationBloc>(() => _i8.TranscationBloc());
    gh.factory<_i9.ApiService>(() => _i9.ApiService(gh<_i5.Dio>()));
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i3.AuthRepo>()));
    gh.lazySingleton<_i11.OrderRepo>(
        () => _i12.OrderService(gh<_i9.ApiService>()));
    gh.lazySingleton<_i13.PickupPartnerRepo>(
        () => _i14.PickupPartnerService(gh<_i9.ApiService>()));
    gh.factory<_i15.PickupPartnerBloc>(
        () => _i15.PickupPartnerBloc(gh<_i13.PickupPartnerRepo>()));
    return this;
  }
}

class _$DioModule extends _i16.DioModule {}
