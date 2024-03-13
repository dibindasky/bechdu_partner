// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart'
    as _i8;
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart'
    as _i11;
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart'
    as _i22;
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart'
    as _i20;
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart'
    as _i21;
import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart'
    as _i6;
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart'
    as _i23;
import 'package:bechdu_partner/data/service/api_service.dart' as _i7;
import 'package:bechdu_partner/data/service/auth/auth_service.dart' as _i4;
import 'package:bechdu_partner/data/service/order/order_service.dart' as _i10;
import 'package:bechdu_partner/data/service/pickup_partner/pickup_partner.dart'
    as _i13;
import 'package:bechdu_partner/data/service/points/points_service.dart' as _i15;
import 'package:bechdu_partner/data/service/requote/requote_service.dart'
    as _i17;
import 'package:bechdu_partner/data/service/transcation/transcation_service.dart'
    as _i19;
import 'package:bechdu_partner/domain/core/dio_module/dio_module.dart' as _i24;
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart' as _i3;
import 'package:bechdu_partner/domain/repository/service/order_repo.dart'
    as _i9;
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart'
    as _i12;
import 'package:bechdu_partner/domain/repository/service/points_repo.dart'
    as _i14;
import 'package:bechdu_partner/domain/repository/service/requote_repo.dart'
    as _i16;
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart'
    as _i18;
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
    gh.factory<_i6.RoleBloc>(() => _i6.RoleBloc());
    gh.factory<_i7.ApiService>(() => _i7.ApiService(gh<_i5.Dio>()));
    gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i3.AuthRepo>()));
    gh.lazySingleton<_i9.OrderRepo>(
        () => _i10.OrderService(gh<_i7.ApiService>()));
    gh.factory<_i11.OrdersBloc>(() => _i11.OrdersBloc(gh<_i9.OrderRepo>()));
    gh.lazySingleton<_i12.PickupPartnerRepo>(
        () => _i13.PickupPartnerService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i14.PointsRepo>(
        () => _i15.PointsService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i16.RequoteRepo>(
        () => _i17.RequoteService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i18.TranscationsRepo>(
        () => _i19.TranscationService(gh<_i7.ApiService>()));
    gh.factory<_i20.PickupPartnerBloc>(
        () => _i20.PickupPartnerBloc(gh<_i12.PickupPartnerRepo>()));
    gh.factory<_i21.PointsBloc>(() => _i21.PointsBloc(gh<_i14.PointsRepo>()));
    gh.factory<_i22.RequoteBloc>(
        () => _i22.RequoteBloc(gh<_i16.RequoteRepo>()));
    gh.factory<_i23.TranscationBloc>(
        () => _i23.TranscationBloc(gh<_i18.TranscationsRepo>()));
    return this;
  }
}

class _$DioModule extends _i24.DioModule {}
