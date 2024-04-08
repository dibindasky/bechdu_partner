// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart'
    as _i23;
import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart'
    as _i24;
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart'
    as _i14;
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart'
    as _i27;
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart'
    as _i25;
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart'
    as _i26;
import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart'
    as _i6;
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart'
    as _i28;
import 'package:bechdu_partner/data/feature/image_picker_service.dart' as _i4;
import 'package:bechdu_partner/data/feature/pdf_buffer.dart' as _i5;
import 'package:bechdu_partner/data/service/api_service.dart' as _i7;
import 'package:bechdu_partner/data/service/auth/auth_service.dart' as _i9;
import 'package:bechdu_partner/data/service/notification/notification.dart'
    as _i11;
import 'package:bechdu_partner/data/service/order/order_service.dart' as _i13;
import 'package:bechdu_partner/data/service/pickup_partner/pickup_partner.dart'
    as _i16;
import 'package:bechdu_partner/data/service/points/points_service.dart' as _i18;
import 'package:bechdu_partner/data/service/requote/requote_service.dart'
    as _i20;
import 'package:bechdu_partner/data/service/transcation/transcation_service.dart'
    as _i22;
import 'package:bechdu_partner/domain/core/dio_module/dio_module.dart' as _i29;
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart' as _i8;
import 'package:bechdu_partner/domain/repository/service/notification_repo.dart'
    as _i10;
import 'package:bechdu_partner/domain/repository/service/order_repo.dart'
    as _i12;
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart'
    as _i15;
import 'package:bechdu_partner/domain/repository/service/points_repo.dart'
    as _i17;
import 'package:bechdu_partner/domain/repository/service/requote_repo.dart'
    as _i19;
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart'
    as _i21;
import 'package:dio/dio.dart' as _i3;
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
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.factory<_i4.ImagePickerService>(() => _i4.ImagePickerService());
    gh.factory<_i5.InvoiceMaker>(() => _i5.InvoiceMaker());
    gh.factory<_i6.RoleBloc>(() => _i6.RoleBloc());
    gh.factory<_i7.ApiService>(() => _i7.ApiService(gh<_i3.Dio>()));
    gh.lazySingleton<_i8.AuthRepo>(() => _i9.AuthService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i10.NotificatonRepo>(
        () => _i11.NotificationService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i12.OrderRepo>(
        () => _i13.OrderService(gh<_i7.ApiService>()));
    gh.factory<_i14.OrdersBloc>(() => _i14.OrdersBloc(
          gh<_i12.OrderRepo>(),
          gh<_i4.ImagePickerService>(),
        ));
    gh.lazySingleton<_i15.PickupPartnerRepo>(
        () => _i16.PickupPartnerService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i17.PointsRepo>(
        () => _i18.PointsService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i19.RequoteRepo>(
        () => _i20.RequoteService(gh<_i7.ApiService>()));
    gh.lazySingleton<_i21.TranscationsRepo>(
        () => _i22.TranscationService(gh<_i7.ApiService>()));
    gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(gh<_i8.AuthRepo>()));
    gh.factory<_i24.NotificationBloc>(
        () => _i24.NotificationBloc(gh<_i10.NotificatonRepo>()));
    gh.factory<_i25.PickupPartnerBloc>(
        () => _i25.PickupPartnerBloc(gh<_i15.PickupPartnerRepo>()));
    gh.factory<_i26.PointsBloc>(() => _i26.PointsBloc(gh<_i17.PointsRepo>()));
    gh.factory<_i27.RequoteBloc>(
        () => _i27.RequoteBloc(gh<_i19.RequoteRepo>()));
    gh.factory<_i28.TranscationBloc>(() => _i28.TranscationBloc(
          gh<_i21.TranscationsRepo>(),
          gh<_i5.InvoiceMaker>(),
          gh<_i4.ImagePickerService>(),
        ));
    return this;
  }
}

class _$DioModule extends _i29.DioModule {}
