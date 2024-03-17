// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AcceptOrderImplCopyWith<$Res> {
  factory _$$AcceptOrderImplCopyWith(
          _$AcceptOrderImpl value, $Res Function(_$AcceptOrderImpl) then) =
      __$$AcceptOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$AcceptOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AcceptOrderImpl>
    implements _$$AcceptOrderImplCopyWith<$Res> {
  __$$AcceptOrderImplCopyWithImpl(
      _$AcceptOrderImpl _value, $Res Function(_$AcceptOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$AcceptOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptOrderImpl implements AcceptOrder {
  const _$AcceptOrderImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.acceptOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      __$$AcceptOrderImplCopyWithImpl<_$AcceptOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return acceptOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return acceptOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return acceptOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return acceptOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(this);
    }
    return orElse();
  }
}

abstract class AcceptOrder implements OrdersEvent {
  const factory AcceptOrder({required final String orderId}) =
      _$AcceptOrderImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderDetailImplCopyWith<$Res> {
  factory _$$GetOrderDetailImplCopyWith(_$GetOrderDetailImpl value,
          $Res Function(_$GetOrderDetailImpl) then) =
      __$$GetOrderDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$GetOrderDetailImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrderDetailImpl>
    implements _$$GetOrderDetailImplCopyWith<$Res> {
  __$$GetOrderDetailImplCopyWithImpl(
      _$GetOrderDetailImpl _value, $Res Function(_$GetOrderDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetOrderDetailImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrderDetailImpl implements GetOrderDetail {
  const _$GetOrderDetailImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.getOrderDetail(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderDetailImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderDetailImplCopyWith<_$GetOrderDetailImpl> get copyWith =>
      __$$GetOrderDetailImplCopyWithImpl<_$GetOrderDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return getOrderDetail(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return getOrderDetail?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getOrderDetail != null) {
      return getOrderDetail(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return getOrderDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return getOrderDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getOrderDetail != null) {
      return getOrderDetail(this);
    }
    return orElse();
  }
}

abstract class GetOrderDetail implements OrdersEvent {
  const factory GetOrderDetail({required final String orderId}) =
      _$GetOrderDetailImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$GetOrderDetailImplCopyWith<_$GetOrderDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String reason});
}

/// @nodoc
class __$$CancelOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CancelOrderImpl>
    implements _$$CancelOrderImplCopyWith<$Res> {
  __$$CancelOrderImplCopyWithImpl(
      _$CancelOrderImpl _value, $Res Function(_$CancelOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
  }) {
    return _then(_$CancelOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelOrderImpl implements CancelOrder {
  const _$CancelOrderImpl({required this.orderId, required this.reason});

  @override
  final String orderId;
  @override
  final String reason;

  @override
  String toString() {
    return 'OrdersEvent.cancelOrder(orderId: $orderId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      __$$CancelOrderImplCopyWithImpl<_$CancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return cancelOrder(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return cancelOrder?.call(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class CancelOrder implements OrdersEvent {
  const factory CancelOrder(
      {required final String orderId,
      required final String reason}) = _$CancelOrderImpl;

  String get orderId;
  String get reason;
  @JsonKey(ignore: true)
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteOrderImplCopyWith<$Res> {
  factory _$$CompleteOrderImplCopyWith(
          _$CompleteOrderImpl value, $Res Function(_$CompleteOrderImpl) then) =
      __$$CompleteOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, CompleteOrderModel completeOrderModel});
}

/// @nodoc
class __$$CompleteOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CompleteOrderImpl>
    implements _$$CompleteOrderImplCopyWith<$Res> {
  __$$CompleteOrderImplCopyWithImpl(
      _$CompleteOrderImpl _value, $Res Function(_$CompleteOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? completeOrderModel = null,
  }) {
    return _then(_$CompleteOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      completeOrderModel: null == completeOrderModel
          ? _value.completeOrderModel
          : completeOrderModel // ignore: cast_nullable_to_non_nullable
              as CompleteOrderModel,
    ));
  }
}

/// @nodoc

class _$CompleteOrderImpl implements CompleteOrder {
  const _$CompleteOrderImpl(
      {required this.orderId, required this.completeOrderModel});

  @override
  final String orderId;
  @override
  final CompleteOrderModel completeOrderModel;

  @override
  String toString() {
    return 'OrdersEvent.completeOrder(orderId: $orderId, completeOrderModel: $completeOrderModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.completeOrderModel, completeOrderModel) ||
                other.completeOrderModel == completeOrderModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, completeOrderModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteOrderImplCopyWith<_$CompleteOrderImpl> get copyWith =>
      __$$CompleteOrderImplCopyWithImpl<_$CompleteOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return completeOrder(orderId, completeOrderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return completeOrder?.call(orderId, completeOrderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (completeOrder != null) {
      return completeOrder(orderId, completeOrderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return completeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return completeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (completeOrder != null) {
      return completeOrder(this);
    }
    return orElse();
  }
}

abstract class CompleteOrder implements OrdersEvent {
  const factory CompleteOrder(
          {required final String orderId,
          required final CompleteOrderModel completeOrderModel}) =
      _$CompleteOrderImpl;

  String get orderId;
  CompleteOrderModel get completeOrderModel;
  @JsonKey(ignore: true)
  _$$CompleteOrderImplCopyWith<_$CompleteOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNewOrderImplCopyWith<$Res> {
  factory _$$GetNewOrderImplCopyWith(
          _$GetNewOrderImpl value, $Res Function(_$GetNewOrderImpl) then) =
      __$$GetNewOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class __$$GetNewOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetNewOrderImpl>
    implements _$$GetNewOrderImplCopyWith<$Res> {
  __$$GetNewOrderImplCopyWithImpl(
      _$GetNewOrderImpl _value, $Res Function(_$GetNewOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? call = null,
  }) {
    return _then(_$GetNewOrderImpl(
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetNewOrderImpl implements GetNewOrder {
  const _$GetNewOrderImpl({required this.call});

  @override
  final bool call;

  @override
  String toString() {
    return 'OrdersEvent.getNewOrder(call: $call)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewOrderImpl &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewOrderImplCopyWith<_$GetNewOrderImpl> get copyWith =>
      __$$GetNewOrderImplCopyWithImpl<_$GetNewOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return getNewOrder(call);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return getNewOrder?.call(call);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getNewOrder != null) {
      return getNewOrder(call);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return getNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return getNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getNewOrder != null) {
      return getNewOrder(this);
    }
    return orElse();
  }
}

abstract class GetNewOrder implements OrdersEvent {
  const factory GetNewOrder({required final bool call}) = _$GetNewOrderImpl;

  bool get call;
  @JsonKey(ignore: true)
  _$$GetNewOrderImplCopyWith<_$GetNewOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPartnerOrdersImplCopyWith<$Res> {
  factory _$$GetPartnerOrdersImplCopyWith(_$GetPartnerOrdersImpl value,
          $Res Function(_$GetPartnerOrdersImpl) then) =
      __$$GetPartnerOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class __$$GetPartnerOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetPartnerOrdersImpl>
    implements _$$GetPartnerOrdersImplCopyWith<$Res> {
  __$$GetPartnerOrdersImplCopyWithImpl(_$GetPartnerOrdersImpl _value,
      $Res Function(_$GetPartnerOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? call = null,
  }) {
    return _then(_$GetPartnerOrdersImpl(
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetPartnerOrdersImpl implements GetPartnerOrders {
  const _$GetPartnerOrdersImpl({required this.call});

  @override
  final bool call;

  @override
  String toString() {
    return 'OrdersEvent.getPartnerOrders(call: $call)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartnerOrdersImpl &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartnerOrdersImplCopyWith<_$GetPartnerOrdersImpl> get copyWith =>
      __$$GetPartnerOrdersImplCopyWithImpl<_$GetPartnerOrdersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return getPartnerOrders(call);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return getPartnerOrders?.call(call);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getPartnerOrders != null) {
      return getPartnerOrders(call);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return getPartnerOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return getPartnerOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getPartnerOrders != null) {
      return getPartnerOrders(this);
    }
    return orElse();
  }
}

abstract class GetPartnerOrders implements OrdersEvent {
  const factory GetPartnerOrders({required final bool call}) =
      _$GetPartnerOrdersImpl;

  bool get call;
  @JsonKey(ignore: true)
  _$$GetPartnerOrdersImplCopyWith<_$GetPartnerOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovePickupPartnerImplCopyWith<$Res> {
  factory _$$RemovePickupPartnerImplCopyWith(_$RemovePickupPartnerImpl value,
          $Res Function(_$RemovePickupPartnerImpl) then) =
      __$$RemovePickupPartnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$RemovePickupPartnerImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RemovePickupPartnerImpl>
    implements _$$RemovePickupPartnerImplCopyWith<$Res> {
  __$$RemovePickupPartnerImplCopyWithImpl(_$RemovePickupPartnerImpl _value,
      $Res Function(_$RemovePickupPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$RemovePickupPartnerImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemovePickupPartnerImpl implements RemovePickupPartner {
  const _$RemovePickupPartnerImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.removePickupPartner(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovePickupPartnerImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovePickupPartnerImplCopyWith<_$RemovePickupPartnerImpl> get copyWith =>
      __$$RemovePickupPartnerImplCopyWithImpl<_$RemovePickupPartnerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return removePickupPartner(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return removePickupPartner?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removePickupPartner != null) {
      return removePickupPartner(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return removePickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return removePickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removePickupPartner != null) {
      return removePickupPartner(this);
    }
    return orElse();
  }
}

abstract class RemovePickupPartner implements OrdersEvent {
  const factory RemovePickupPartner({required final String orderId}) =
      _$RemovePickupPartnerImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$RemovePickupPartnerImplCopyWith<_$RemovePickupPartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefresPartnerOrdersImplCopyWith<$Res> {
  factory _$$RefresPartnerOrdersImplCopyWith(_$RefresPartnerOrdersImpl value,
          $Res Function(_$RefresPartnerOrdersImpl) then) =
      __$$RefresPartnerOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefresPartnerOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RefresPartnerOrdersImpl>
    implements _$$RefresPartnerOrdersImplCopyWith<$Res> {
  __$$RefresPartnerOrdersImplCopyWithImpl(_$RefresPartnerOrdersImpl _value,
      $Res Function(_$RefresPartnerOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefresPartnerOrdersImpl implements RefresPartnerOrders {
  const _$RefresPartnerOrdersImpl();

  @override
  String toString() {
    return 'OrdersEvent.refresPartnerOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefresPartnerOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return refresPartnerOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return refresPartnerOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (refresPartnerOrders != null) {
      return refresPartnerOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return refresPartnerOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return refresPartnerOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (refresPartnerOrders != null) {
      return refresPartnerOrders(this);
    }
    return orElse();
  }
}

abstract class RefresPartnerOrders implements OrdersEvent {
  const factory RefresPartnerOrders() = _$RefresPartnerOrdersImpl;
}

/// @nodoc
abstract class _$$RefreshNewOrderImplCopyWith<$Res> {
  factory _$$RefreshNewOrderImplCopyWith(_$RefreshNewOrderImpl value,
          $Res Function(_$RefreshNewOrderImpl) then) =
      __$$RefreshNewOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshNewOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RefreshNewOrderImpl>
    implements _$$RefreshNewOrderImplCopyWith<$Res> {
  __$$RefreshNewOrderImplCopyWithImpl(
      _$RefreshNewOrderImpl _value, $Res Function(_$RefreshNewOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshNewOrderImpl implements RefreshNewOrder {
  const _$RefreshNewOrderImpl();

  @override
  String toString() {
    return 'OrdersEvent.refreshNewOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshNewOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return refreshNewOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return refreshNewOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (refreshNewOrder != null) {
      return refreshNewOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return refreshNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return refreshNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (refreshNewOrder != null) {
      return refreshNewOrder(this);
    }
    return orElse();
  }
}

abstract class RefreshNewOrder implements OrdersEvent {
  const factory RefreshNewOrder() = _$RefreshNewOrderImpl;
}

/// @nodoc
abstract class _$$ChangeTabImplCopyWith<$Res> {
  factory _$$ChangeTabImplCopyWith(
          _$ChangeTabImpl value, $Res Function(_$ChangeTabImpl) then) =
      __$$ChangeTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tab});
}

/// @nodoc
class __$$ChangeTabImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ChangeTabImpl>
    implements _$$ChangeTabImplCopyWith<$Res> {
  __$$ChangeTabImplCopyWithImpl(
      _$ChangeTabImpl _value, $Res Function(_$ChangeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$ChangeTabImpl(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTabImpl implements ChangeTab {
  const _$ChangeTabImpl({required this.tab});

  @override
  final int tab;

  @override
  String toString() {
    return 'OrdersEvent.changeTab(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      __$$ChangeTabImplCopyWithImpl<_$ChangeTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return changeTab(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return changeTab?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class ChangeTab implements OrdersEvent {
  const factory ChangeTab({required final int tab}) = _$ChangeTabImpl;

  int get tab;
  @JsonKey(ignore: true)
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePickupPartnerImplCopyWith<$Res> {
  factory _$$ChangePickupPartnerImplCopyWith(_$ChangePickupPartnerImpl value,
          $Res Function(_$ChangePickupPartnerImpl) then) =
      __$$ChangePickupPartnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PickUpPerson pickUpPerson, String orderId});
}

/// @nodoc
class __$$ChangePickupPartnerImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ChangePickupPartnerImpl>
    implements _$$ChangePickupPartnerImplCopyWith<$Res> {
  __$$ChangePickupPartnerImplCopyWithImpl(_$ChangePickupPartnerImpl _value,
      $Res Function(_$ChangePickupPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpPerson = null,
    Object? orderId = null,
  }) {
    return _then(_$ChangePickupPartnerImpl(
      pickUpPerson: null == pickUpPerson
          ? _value.pickUpPerson
          : pickUpPerson // ignore: cast_nullable_to_non_nullable
              as PickUpPerson,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePickupPartnerImpl implements ChangePickupPartner {
  const _$ChangePickupPartnerImpl(
      {required this.pickUpPerson, required this.orderId});

  @override
  final PickUpPerson pickUpPerson;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.changePickupPartner(pickUpPerson: $pickUpPerson, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePickupPartnerImpl &&
            (identical(other.pickUpPerson, pickUpPerson) ||
                other.pickUpPerson == pickUpPerson) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickUpPerson, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePickupPartnerImplCopyWith<_$ChangePickupPartnerImpl> get copyWith =>
      __$$ChangePickupPartnerImplCopyWithImpl<_$ChangePickupPartnerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return changePickupPartner(pickUpPerson, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return changePickupPartner?.call(pickUpPerson, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changePickupPartner != null) {
      return changePickupPartner(pickUpPerson, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return changePickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return changePickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (changePickupPartner != null) {
      return changePickupPartner(this);
    }
    return orElse();
  }
}

abstract class ChangePickupPartner implements OrdersEvent {
  const factory ChangePickupPartner(
      {required final PickUpPerson pickUpPerson,
      required final String orderId}) = _$ChangePickupPartnerImpl;

  PickUpPerson get pickUpPerson;
  String get orderId;
  @JsonKey(ignore: true)
  _$$ChangePickupPartnerImplCopyWith<_$ChangePickupPartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckErrorCompleteOrderImplCopyWith<$Res> {
  factory _$$CheckErrorCompleteOrderImplCopyWith(
          _$CheckErrorCompleteOrderImpl value,
          $Res Function(_$CheckErrorCompleteOrderImpl) then) =
      __$$CheckErrorCompleteOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckErrorCompleteOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CheckErrorCompleteOrderImpl>
    implements _$$CheckErrorCompleteOrderImplCopyWith<$Res> {
  __$$CheckErrorCompleteOrderImplCopyWithImpl(
      _$CheckErrorCompleteOrderImpl _value,
      $Res Function(_$CheckErrorCompleteOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckErrorCompleteOrderImpl implements CheckErrorCompleteOrder {
  const _$CheckErrorCompleteOrderImpl();

  @override
  String toString() {
    return 'OrdersEvent.checkErrorCompleteOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckErrorCompleteOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return checkErrorCompleteOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return checkErrorCompleteOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkErrorCompleteOrder != null) {
      return checkErrorCompleteOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return checkErrorCompleteOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return checkErrorCompleteOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (checkErrorCompleteOrder != null) {
      return checkErrorCompleteOrder(this);
    }
    return orElse();
  }
}

abstract class CheckErrorCompleteOrder implements OrdersEvent {
  const factory CheckErrorCompleteOrder() = _$CheckErrorCompleteOrderImpl;
}

/// @nodoc
abstract class _$$AddDiviceBillImplCopyWith<$Res> {
  factory _$$AddDiviceBillImplCopyWith(
          _$AddDiviceBillImpl value, $Res Function(_$AddDiviceBillImpl) then) =
      __$$AddDiviceBillImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddDiviceBillImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AddDiviceBillImpl>
    implements _$$AddDiviceBillImplCopyWith<$Res> {
  __$$AddDiviceBillImplCopyWithImpl(
      _$AddDiviceBillImpl _value, $Res Function(_$AddDiviceBillImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddDiviceBillImpl implements AddDiviceBill {
  const _$AddDiviceBillImpl();

  @override
  String toString() {
    return 'OrdersEvent.addDiviceBill()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddDiviceBillImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return addDiviceBill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return addDiviceBill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addDiviceBill != null) {
      return addDiviceBill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return addDiviceBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return addDiviceBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addDiviceBill != null) {
      return addDiviceBill(this);
    }
    return orElse();
  }
}

abstract class AddDiviceBill implements OrdersEvent {
  const factory AddDiviceBill() = _$AddDiviceBillImpl;
}

/// @nodoc
abstract class _$$RemoveDiviceBillImplCopyWith<$Res> {
  factory _$$RemoveDiviceBillImplCopyWith(_$RemoveDiviceBillImpl value,
          $Res Function(_$RemoveDiviceBillImpl) then) =
      __$$RemoveDiviceBillImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveDiviceBillImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RemoveDiviceBillImpl>
    implements _$$RemoveDiviceBillImplCopyWith<$Res> {
  __$$RemoveDiviceBillImplCopyWithImpl(_$RemoveDiviceBillImpl _value,
      $Res Function(_$RemoveDiviceBillImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveDiviceBillImpl implements RemoveDiviceBill {
  const _$RemoveDiviceBillImpl();

  @override
  String toString() {
    return 'OrdersEvent.removeDiviceBill()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveDiviceBillImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return removeDiviceBill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return removeDiviceBill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removeDiviceBill != null) {
      return removeDiviceBill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return removeDiviceBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return removeDiviceBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removeDiviceBill != null) {
      return removeDiviceBill(this);
    }
    return orElse();
  }
}

abstract class RemoveDiviceBill implements OrdersEvent {
  const factory RemoveDiviceBill() = _$RemoveDiviceBillImpl;
}

/// @nodoc
abstract class _$$AddIdCardImageImplCopyWith<$Res> {
  factory _$$AddIdCardImageImplCopyWith(_$AddIdCardImageImpl value,
          $Res Function(_$AddIdCardImageImpl) then) =
      __$$AddIdCardImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddIdCardImageImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AddIdCardImageImpl>
    implements _$$AddIdCardImageImplCopyWith<$Res> {
  __$$AddIdCardImageImplCopyWithImpl(
      _$AddIdCardImageImpl _value, $Res Function(_$AddIdCardImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddIdCardImageImpl implements AddIdCardImage {
  const _$AddIdCardImageImpl();

  @override
  String toString() {
    return 'OrdersEvent.addIdCardImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddIdCardImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return addIdCardImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return addIdCardImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addIdCardImage != null) {
      return addIdCardImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return addIdCardImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return addIdCardImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addIdCardImage != null) {
      return addIdCardImage(this);
    }
    return orElse();
  }
}

abstract class AddIdCardImage implements OrdersEvent {
  const factory AddIdCardImage() = _$AddIdCardImageImpl;
}

/// @nodoc
abstract class _$$RemoveIdCardImageImplCopyWith<$Res> {
  factory _$$RemoveIdCardImageImplCopyWith(_$RemoveIdCardImageImpl value,
          $Res Function(_$RemoveIdCardImageImpl) then) =
      __$$RemoveIdCardImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveIdCardImageImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RemoveIdCardImageImpl>
    implements _$$RemoveIdCardImageImplCopyWith<$Res> {
  __$$RemoveIdCardImageImplCopyWithImpl(_$RemoveIdCardImageImpl _value,
      $Res Function(_$RemoveIdCardImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveIdCardImageImpl implements RemoveIdCardImage {
  const _$RemoveIdCardImageImpl();

  @override
  String toString() {
    return 'OrdersEvent.removeIdCardImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveIdCardImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return removeIdCardImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return removeIdCardImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removeIdCardImage != null) {
      return removeIdCardImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return removeIdCardImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return removeIdCardImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removeIdCardImage != null) {
      return removeIdCardImage(this);
    }
    return orElse();
  }
}

abstract class RemoveIdCardImage implements OrdersEvent {
  const factory RemoveIdCardImage() = _$RemoveIdCardImageImpl;
}

/// @nodoc
abstract class _$$AddDeviceImagesImplCopyWith<$Res> {
  factory _$$AddDeviceImagesImplCopyWith(_$AddDeviceImagesImpl value,
          $Res Function(_$AddDeviceImagesImpl) then) =
      __$$AddDeviceImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddDeviceImagesImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AddDeviceImagesImpl>
    implements _$$AddDeviceImagesImplCopyWith<$Res> {
  __$$AddDeviceImagesImplCopyWithImpl(
      _$AddDeviceImagesImpl _value, $Res Function(_$AddDeviceImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddDeviceImagesImpl implements AddDeviceImages {
  const _$AddDeviceImagesImpl();

  @override
  String toString() {
    return 'OrdersEvent.addDeviceImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddDeviceImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return addDeviceImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return addDeviceImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addDeviceImages != null) {
      return addDeviceImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return addDeviceImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return addDeviceImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addDeviceImages != null) {
      return addDeviceImages(this);
    }
    return orElse();
  }
}

abstract class AddDeviceImages implements OrdersEvent {
  const factory AddDeviceImages() = _$AddDeviceImagesImpl;
}

/// @nodoc
abstract class _$$RemoveDeviceImageImplCopyWith<$Res> {
  factory _$$RemoveDeviceImageImplCopyWith(_$RemoveDeviceImageImpl value,
          $Res Function(_$RemoveDeviceImageImpl) then) =
      __$$RemoveDeviceImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveDeviceImageImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RemoveDeviceImageImpl>
    implements _$$RemoveDeviceImageImplCopyWith<$Res> {
  __$$RemoveDeviceImageImplCopyWithImpl(_$RemoveDeviceImageImpl _value,
      $Res Function(_$RemoveDeviceImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveDeviceImageImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveDeviceImageImpl implements RemoveDeviceImage {
  const _$RemoveDeviceImageImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'OrdersEvent.removeDeviceImage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDeviceImageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDeviceImageImplCopyWith<_$RemoveDeviceImageImpl> get copyWith =>
      __$$RemoveDeviceImageImplCopyWithImpl<_$RemoveDeviceImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return removeDeviceImage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return removeDeviceImage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removeDeviceImage != null) {
      return removeDeviceImage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return removeDeviceImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return removeDeviceImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removeDeviceImage != null) {
      return removeDeviceImage(this);
    }
    return orElse();
  }
}

abstract class RemoveDeviceImage implements OrdersEvent {
  const factory RemoveDeviceImage({required final int index}) =
      _$RemoveDeviceImageImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveDeviceImageImplCopyWith<_$RemoveDeviceImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'OrdersEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addIdCardImage,
    required TResult Function() removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addIdCardImage,
    TResult? Function()? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addIdCardImage,
    TResult Function()? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements OrdersEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$OrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get acceptOrderLoading => throw _privateConstructorUsedError;
  bool get acceptOrderError => throw _privateConstructorUsedError;
  bool get acceptOrder => throw _privateConstructorUsedError;
  bool get cancelOrder => throw _privateConstructorUsedError;
  bool get completeOrderLoading => throw _privateConstructorUsedError;
  bool get orderCompleted => throw _privateConstructorUsedError;
  bool get orderCompletionError => throw _privateConstructorUsedError;
  bool get newOrdesRefreshLoading => throw _privateConstructorUsedError;
  bool get partnerOrdesRefreshLoading => throw _privateConstructorUsedError;
  bool get orderDetailError => throw _privateConstructorUsedError;
  bool get popOrderScreen => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ImageModel? get deviceBill => throw _privateConstructorUsedError;
  ImageModel? get idCard => throw _privateConstructorUsedError;
  List<ImageModel>? get deviceImages => throw _privateConstructorUsedError;
  List<OrderDetail>? get partnerOrders => throw _privateConstructorUsedError;
  List<OrderDetail>? get newOrders => throw _privateConstructorUsedError;
  OrderDetail? get orderDetail => throw _privateConstructorUsedError;
  int get orderTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool acceptOrderLoading,
      bool acceptOrderError,
      bool acceptOrder,
      bool cancelOrder,
      bool completeOrderLoading,
      bool orderCompleted,
      bool orderCompletionError,
      bool newOrdesRefreshLoading,
      bool partnerOrdesRefreshLoading,
      bool orderDetailError,
      bool popOrderScreen,
      String? message,
      ImageModel? deviceBill,
      ImageModel? idCard,
      List<ImageModel>? deviceImages,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
      OrderDetail? orderDetail,
      int orderTab});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? acceptOrderLoading = null,
    Object? acceptOrderError = null,
    Object? acceptOrder = null,
    Object? cancelOrder = null,
    Object? completeOrderLoading = null,
    Object? orderCompleted = null,
    Object? orderCompletionError = null,
    Object? newOrdesRefreshLoading = null,
    Object? partnerOrdesRefreshLoading = null,
    Object? orderDetailError = null,
    Object? popOrderScreen = null,
    Object? message = freezed,
    Object? deviceBill = freezed,
    Object? idCard = freezed,
    Object? deviceImages = freezed,
    Object? partnerOrders = freezed,
    Object? newOrders = freezed,
    Object? orderDetail = freezed,
    Object? orderTab = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrderLoading: null == acceptOrderLoading
          ? _value.acceptOrderLoading
          : acceptOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrderError: null == acceptOrderError
          ? _value.acceptOrderError
          : acceptOrderError // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrder: null == acceptOrder
          ? _value.acceptOrder
          : acceptOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelOrder: null == cancelOrder
          ? _value.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      completeOrderLoading: null == completeOrderLoading
          ? _value.completeOrderLoading
          : completeOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompleted: null == orderCompleted
          ? _value.orderCompleted
          : orderCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompletionError: null == orderCompletionError
          ? _value.orderCompletionError
          : orderCompletionError // ignore: cast_nullable_to_non_nullable
              as bool,
      newOrdesRefreshLoading: null == newOrdesRefreshLoading
          ? _value.newOrdesRefreshLoading
          : newOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerOrdesRefreshLoading: null == partnerOrdesRefreshLoading
          ? _value.partnerOrdesRefreshLoading
          : partnerOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDetailError: null == orderDetailError
          ? _value.orderDetailError
          : orderDetailError // ignore: cast_nullable_to_non_nullable
              as bool,
      popOrderScreen: null == popOrderScreen
          ? _value.popOrderScreen
          : popOrderScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceBill: freezed == deviceBill
          ? _value.deviceBill
          : deviceBill // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      deviceImages: freezed == deviceImages
          ? _value.deviceImages
          : deviceImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      partnerOrders: freezed == partnerOrders
          ? _value.partnerOrders
          : partnerOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      newOrders: freezed == newOrders
          ? _value.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      orderTab: null == orderTab
          ? _value.orderTab
          : orderTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool acceptOrderLoading,
      bool acceptOrderError,
      bool acceptOrder,
      bool cancelOrder,
      bool completeOrderLoading,
      bool orderCompleted,
      bool orderCompletionError,
      bool newOrdesRefreshLoading,
      bool partnerOrdesRefreshLoading,
      bool orderDetailError,
      bool popOrderScreen,
      String? message,
      ImageModel? deviceBill,
      ImageModel? idCard,
      List<ImageModel>? deviceImages,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
      OrderDetail? orderDetail,
      int orderTab});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? acceptOrderLoading = null,
    Object? acceptOrderError = null,
    Object? acceptOrder = null,
    Object? cancelOrder = null,
    Object? completeOrderLoading = null,
    Object? orderCompleted = null,
    Object? orderCompletionError = null,
    Object? newOrdesRefreshLoading = null,
    Object? partnerOrdesRefreshLoading = null,
    Object? orderDetailError = null,
    Object? popOrderScreen = null,
    Object? message = freezed,
    Object? deviceBill = freezed,
    Object? idCard = freezed,
    Object? deviceImages = freezed,
    Object? partnerOrders = freezed,
    Object? newOrders = freezed,
    Object? orderDetail = freezed,
    Object? orderTab = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrderLoading: null == acceptOrderLoading
          ? _value.acceptOrderLoading
          : acceptOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrderError: null == acceptOrderError
          ? _value.acceptOrderError
          : acceptOrderError // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrder: null == acceptOrder
          ? _value.acceptOrder
          : acceptOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelOrder: null == cancelOrder
          ? _value.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      completeOrderLoading: null == completeOrderLoading
          ? _value.completeOrderLoading
          : completeOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompleted: null == orderCompleted
          ? _value.orderCompleted
          : orderCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompletionError: null == orderCompletionError
          ? _value.orderCompletionError
          : orderCompletionError // ignore: cast_nullable_to_non_nullable
              as bool,
      newOrdesRefreshLoading: null == newOrdesRefreshLoading
          ? _value.newOrdesRefreshLoading
          : newOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerOrdesRefreshLoading: null == partnerOrdesRefreshLoading
          ? _value.partnerOrdesRefreshLoading
          : partnerOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDetailError: null == orderDetailError
          ? _value.orderDetailError
          : orderDetailError // ignore: cast_nullable_to_non_nullable
              as bool,
      popOrderScreen: null == popOrderScreen
          ? _value.popOrderScreen
          : popOrderScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceBill: freezed == deviceBill
          ? _value.deviceBill
          : deviceBill // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      deviceImages: freezed == deviceImages
          ? _value._deviceImages
          : deviceImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      partnerOrders: freezed == partnerOrders
          ? _value._partnerOrders
          : partnerOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      newOrders: freezed == newOrders
          ? _value._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      orderTab: null == orderTab
          ? _value.orderTab
          : orderTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.acceptOrderLoading,
      required this.acceptOrderError,
      required this.acceptOrder,
      required this.cancelOrder,
      required this.completeOrderLoading,
      required this.orderCompleted,
      required this.orderCompletionError,
      required this.newOrdesRefreshLoading,
      required this.partnerOrdesRefreshLoading,
      required this.orderDetailError,
      required this.popOrderScreen,
      this.message,
      this.deviceBill,
      this.idCard,
      final List<ImageModel>? deviceImages,
      final List<OrderDetail>? partnerOrders,
      final List<OrderDetail>? newOrders,
      this.orderDetail,
      required this.orderTab})
      : _deviceImages = deviceImages,
        _partnerOrders = partnerOrders,
        _newOrders = newOrders;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool acceptOrderLoading;
  @override
  final bool acceptOrderError;
  @override
  final bool acceptOrder;
  @override
  final bool cancelOrder;
  @override
  final bool completeOrderLoading;
  @override
  final bool orderCompleted;
  @override
  final bool orderCompletionError;
  @override
  final bool newOrdesRefreshLoading;
  @override
  final bool partnerOrdesRefreshLoading;
  @override
  final bool orderDetailError;
  @override
  final bool popOrderScreen;
  @override
  final String? message;
  @override
  final ImageModel? deviceBill;
  @override
  final ImageModel? idCard;
  final List<ImageModel>? _deviceImages;
  @override
  List<ImageModel>? get deviceImages {
    final value = _deviceImages;
    if (value == null) return null;
    if (_deviceImages is EqualUnmodifiableListView) return _deviceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderDetail>? _partnerOrders;
  @override
  List<OrderDetail>? get partnerOrders {
    final value = _partnerOrders;
    if (value == null) return null;
    if (_partnerOrders is EqualUnmodifiableListView) return _partnerOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderDetail>? _newOrders;
  @override
  List<OrderDetail>? get newOrders {
    final value = _newOrders;
    if (value == null) return null;
    if (_newOrders is EqualUnmodifiableListView) return _newOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrderDetail? orderDetail;
  @override
  final int orderTab;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, hasError: $hasError, acceptOrderLoading: $acceptOrderLoading, acceptOrderError: $acceptOrderError, acceptOrder: $acceptOrder, cancelOrder: $cancelOrder, completeOrderLoading: $completeOrderLoading, orderCompleted: $orderCompleted, orderCompletionError: $orderCompletionError, newOrdesRefreshLoading: $newOrdesRefreshLoading, partnerOrdesRefreshLoading: $partnerOrdesRefreshLoading, orderDetailError: $orderDetailError, popOrderScreen: $popOrderScreen, message: $message, deviceBill: $deviceBill, idCard: $idCard, deviceImages: $deviceImages, partnerOrders: $partnerOrders, newOrders: $newOrders, orderDetail: $orderDetail, orderTab: $orderTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.acceptOrderLoading, acceptOrderLoading) ||
                other.acceptOrderLoading == acceptOrderLoading) &&
            (identical(other.acceptOrderError, acceptOrderError) ||
                other.acceptOrderError == acceptOrderError) &&
            (identical(other.acceptOrder, acceptOrder) ||
                other.acceptOrder == acceptOrder) &&
            (identical(other.cancelOrder, cancelOrder) ||
                other.cancelOrder == cancelOrder) &&
            (identical(other.completeOrderLoading, completeOrderLoading) ||
                other.completeOrderLoading == completeOrderLoading) &&
            (identical(other.orderCompleted, orderCompleted) ||
                other.orderCompleted == orderCompleted) &&
            (identical(other.orderCompletionError, orderCompletionError) ||
                other.orderCompletionError == orderCompletionError) &&
            (identical(other.newOrdesRefreshLoading, newOrdesRefreshLoading) ||
                other.newOrdesRefreshLoading == newOrdesRefreshLoading) &&
            (identical(other.partnerOrdesRefreshLoading,
                    partnerOrdesRefreshLoading) ||
                other.partnerOrdesRefreshLoading ==
                    partnerOrdesRefreshLoading) &&
            (identical(other.orderDetailError, orderDetailError) ||
                other.orderDetailError == orderDetailError) &&
            (identical(other.popOrderScreen, popOrderScreen) ||
                other.popOrderScreen == popOrderScreen) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deviceBill, deviceBill) ||
                other.deviceBill == deviceBill) &&
            (identical(other.idCard, idCard) || other.idCard == idCard) &&
            const DeepCollectionEquality()
                .equals(other._deviceImages, _deviceImages) &&
            const DeepCollectionEquality()
                .equals(other._partnerOrders, _partnerOrders) &&
            const DeepCollectionEquality()
                .equals(other._newOrders, _newOrders) &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            (identical(other.orderTab, orderTab) ||
                other.orderTab == orderTab));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        acceptOrderLoading,
        acceptOrderError,
        acceptOrder,
        cancelOrder,
        completeOrderLoading,
        orderCompleted,
        orderCompletionError,
        newOrdesRefreshLoading,
        partnerOrdesRefreshLoading,
        orderDetailError,
        popOrderScreen,
        message,
        deviceBill,
        idCard,
        const DeepCollectionEquality().hash(_deviceImages),
        const DeepCollectionEquality().hash(_partnerOrders),
        const DeepCollectionEquality().hash(_newOrders),
        orderDetail,
        orderTab
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OrdersState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool acceptOrderLoading,
      required final bool acceptOrderError,
      required final bool acceptOrder,
      required final bool cancelOrder,
      required final bool completeOrderLoading,
      required final bool orderCompleted,
      required final bool orderCompletionError,
      required final bool newOrdesRefreshLoading,
      required final bool partnerOrdesRefreshLoading,
      required final bool orderDetailError,
      required final bool popOrderScreen,
      final String? message,
      final ImageModel? deviceBill,
      final ImageModel? idCard,
      final List<ImageModel>? deviceImages,
      final List<OrderDetail>? partnerOrders,
      final List<OrderDetail>? newOrders,
      final OrderDetail? orderDetail,
      required final int orderTab}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get acceptOrderLoading;
  @override
  bool get acceptOrderError;
  @override
  bool get acceptOrder;
  @override
  bool get cancelOrder;
  @override
  bool get completeOrderLoading;
  @override
  bool get orderCompleted;
  @override
  bool get orderCompletionError;
  @override
  bool get newOrdesRefreshLoading;
  @override
  bool get partnerOrdesRefreshLoading;
  @override
  bool get orderDetailError;
  @override
  bool get popOrderScreen;
  @override
  String? get message;
  @override
  ImageModel? get deviceBill;
  @override
  ImageModel? get idCard;
  @override
  List<ImageModel>? get deviceImages;
  @override
  List<OrderDetail>? get partnerOrders;
  @override
  List<OrderDetail>? get newOrders;
  @override
  OrderDetail? get orderDetail;
  @override
  int get orderTab;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
