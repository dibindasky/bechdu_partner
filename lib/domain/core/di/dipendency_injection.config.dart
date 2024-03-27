// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart'
    as _i10;
import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart'
    as _i24;
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart'
    as _i15;
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart'
    as _i27;
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart'
    as _i25;
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart'
    as _i26;
import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart'
    as _i8;
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart'
    as _i28;
import 'package:bechdu_partner/data/feature/image_picker_service.dart' as _i6;
import 'package:bechdu_partner/data/feature/pdf_buffer.dart' as _i7;
import 'package:bechdu_partner/data/service/api_service.dart' as _i9;
import 'package:bechdu_partner/data/service/auth/auth_service.dart' as _i4;
import 'package:bechdu_partner/data/service/notification/notification.dart'
    as _i12;
import 'package:bechdu_partner/data/service/order/order_service.dart' as _i14;
import 'package:bechdu_partner/data/service/pickup_partner/pickup_partner.dart'
    as _i17;
import 'package:bechdu_partner/data/service/points/points_service.dart' as _i19;
import 'package:bechdu_partner/data/service/requote/requote_service.dart'
    as _i21;
import 'package:bechdu_partner/data/service/transcation/transcation_service.dart'
    as _i23;
import 'package:bechdu_partner/domain/core/dio_module/dio_module.dart' as _i29;
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart' as _i3;
import 'package:bechdu_partner/domain/repository/service/notification_repo.dart'
    as _i11;
import 'package:bechdu_partner/domain/repository/service/order_repo.dart'
    as _i13;
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart'
    as _i16;
import 'package:bechdu_partner/domain/repository/service/points_repo.dart'
    as _i18;
import 'package:bechdu_partner/domain/repository/service/requote_repo.dart'
    as _i20;
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart'
    as _i22;
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
    gh.factory<_i6.ImagePickerService>(() => _i6.ImagePickerService());
    gh.factory<_i7.InvoiceMaker>(() => _i7.InvoiceMaker());
    gh.factory<_i8.RoleBloc>(() => _i8.RoleBloc());
    gh.factory<_i9.ApiService>(() => _i9.ApiService(gh<_i5.Dio>()));
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i3.AuthRepo>()));
    gh.lazySingleton<_i11.NotificatonRepo>(
        () => _i12.NotificationService(gh<_i9.ApiService>()));
    gh.lazySingleton<_i13.OrderRepo>(
        () => _i14.OrderService(gh<_i9.ApiService>()));
    gh.factory<_i15.OrdersBloc>(() => _i15.OrdersBloc(
          gh<_i13.OrderRepo>(),
          gh<_i6.ImagePickerService>(),
        ));
    gh.lazySingleton<_i16.PickupPartnerRepo>(
        () => _i17.PickupPartnerService(gh<_i9.ApiService>()));
    gh.lazySingleton<_i18.PointsRepo>(
        () => _i19.PointsService(gh<_i9.ApiService>()));
    gh.lazySingleton<_i20.RequoteRepo>(
        () => _i21.RequoteService(gh<_i9.ApiService>()));
    gh.lazySingleton<_i22.TranscationsRepo>(
        () => _i23.TranscationService(gh<_i9.ApiService>()));
    gh.factory<_i24.NotificationBloc>(
        () => _i24.NotificationBloc(gh<_i11.NotificatonRepo>()));
    gh.factory<_i25.PickupPartnerBloc>(
        () => _i25.PickupPartnerBloc(gh<_i16.PickupPartnerRepo>()));
    gh.factory<_i26.PointsBloc>(() => _i26.PointsBloc(gh<_i18.PointsRepo>()));
    gh.factory<_i27.RequoteBloc>(
        () => _i27.RequoteBloc(gh<_i20.RequoteRepo>()));
    gh.factory<_i28.TranscationBloc>(() => _i28.TranscationBloc(
          gh<_i22.TranscationsRepo>(),
          gh<_i7.InvoiceMaker>(),
          gh<_i6.ImagePickerService>(),
        ));
    return this;
  }
}

class _$DioModule extends _i29.DioModule {}
