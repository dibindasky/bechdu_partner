// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart'
    as _i3;
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart'
    as _i5;
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart'
    as _i6;
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart'
    as _i7;
import 'package:bechdu_partner/data/service/api_service.dart' as _i8;
import 'package:bechdu_partner/domain/core/dio_module/dio_module.dart' as _i9;
import 'package:dio/dio.dart' as _i4;
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
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
    gh.lazySingleton<_i4.Dio>(() => dioModule.dioInstance);
    gh.factory<_i5.OrdersBloc>(() => _i5.OrdersBloc());
    gh.factory<_i6.RequoteBloc>(() => _i6.RequoteBloc());
    gh.factory<_i7.TranscationBloc>(() => _i7.TranscationBloc());
    gh.factory<_i8.ApiService>(() => _i8.ApiService(gh<_i4.Dio>()));
    return this;
  }
}

class _$DioModule extends _i9.DioModule {}
