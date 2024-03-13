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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return acceptOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return acceptOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return acceptOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return acceptOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
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
  }) {
    return _then(_$CancelOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelOrderImpl implements CancelOrder {
  const _$CancelOrderImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.cancelOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      __$$CancelOrderImplCopyWithImpl<_$CancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return cancelOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return cancelOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
  const factory CancelOrder({required final String orderId}) =
      _$CancelOrderImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNewOrderImplCopyWith<$Res> {
  factory _$$GetNewOrderImplCopyWith(
          _$GetNewOrderImpl value, $Res Function(_$GetNewOrderImpl) then) =
      __$$GetNewOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetNewOrderImpl>
    implements _$$GetNewOrderImplCopyWith<$Res> {
  __$$GetNewOrderImplCopyWithImpl(
      _$GetNewOrderImpl _value, $Res Function(_$GetNewOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNewOrderImpl implements GetNewOrder {
  const _$GetNewOrderImpl();

  @override
  String toString() {
    return 'OrdersEvent.getNewOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNewOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return getNewOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return getNewOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getNewOrder != null) {
      return getNewOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return getNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return getNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
  const factory GetNewOrder() = _$GetNewOrderImpl;
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return refreshNewOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return refreshNewOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return refreshNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return refreshNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
abstract class _$$GetPartnerOrdersImplCopyWith<$Res> {
  factory _$$GetPartnerOrdersImplCopyWith(_$GetPartnerOrdersImpl value,
          $Res Function(_$GetPartnerOrdersImpl) then) =
      __$$GetPartnerOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPartnerOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetPartnerOrdersImpl>
    implements _$$GetPartnerOrdersImplCopyWith<$Res> {
  __$$GetPartnerOrdersImplCopyWithImpl(_$GetPartnerOrdersImpl _value,
      $Res Function(_$GetPartnerOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPartnerOrdersImpl implements GetPartnerOrders {
  const _$GetPartnerOrdersImpl();

  @override
  String toString() {
    return 'OrdersEvent.getPartnerOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPartnerOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return getPartnerOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return getPartnerOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getPartnerOrders != null) {
      return getPartnerOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return getPartnerOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return getPartnerOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
  const factory GetPartnerOrders() = _$GetPartnerOrdersImpl;
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return removePickupPartner(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return removePickupPartner?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return removePickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return removePickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return refresPartnerOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return refresPartnerOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return refresPartnerOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return refresPartnerOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return changeTab(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return changeTab?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return changePickupPartner(pickUpPerson, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return changePickupPartner?.call(pickUpPerson, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return changePickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return changePickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() getNewOrder,
    required TResult Function() refreshNewOrder,
    required TResult Function() getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? getNewOrder,
    TResult? Function()? refreshNewOrder,
    TResult? Function()? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? getNewOrder,
    TResult Function()? refreshNewOrder,
    TResult Function()? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
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
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
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
  String? get message => throw _privateConstructorUsedError;
  List<OrderDetail>? get partnerOrders => throw _privateConstructorUsedError;
  List<OrderDetail>? get newOrders => throw _privateConstructorUsedError;
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
      String? message,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
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
    Object? message = freezed,
    Object? partnerOrders = freezed,
    Object? newOrders = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerOrders: freezed == partnerOrders
          ? _value.partnerOrders
          : partnerOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      newOrders: freezed == newOrders
          ? _value.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
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
      String? message,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
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
    Object? message = freezed,
    Object? partnerOrders = freezed,
    Object? newOrders = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerOrders: freezed == partnerOrders
          ? _value._partnerOrders
          : partnerOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      newOrders: freezed == newOrders
          ? _value._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
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
      this.message,
      final List<OrderDetail>? partnerOrders,
      final List<OrderDetail>? newOrders,
      required this.orderTab})
      : _partnerOrders = partnerOrders,
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
  final String? message;
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
  final int orderTab;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, hasError: $hasError, acceptOrderLoading: $acceptOrderLoading, acceptOrderError: $acceptOrderError, acceptOrder: $acceptOrder, cancelOrder: $cancelOrder, message: $message, partnerOrders: $partnerOrders, newOrders: $newOrders, orderTab: $orderTab)';
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
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._partnerOrders, _partnerOrders) &&
            const DeepCollectionEquality()
                .equals(other._newOrders, _newOrders) &&
            (identical(other.orderTab, orderTab) ||
                other.orderTab == orderTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      acceptOrderLoading,
      acceptOrderError,
      acceptOrder,
      cancelOrder,
      message,
      const DeepCollectionEquality().hash(_partnerOrders),
      const DeepCollectionEquality().hash(_newOrders),
      orderTab);

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
      final String? message,
      final List<OrderDetail>? partnerOrders,
      final List<OrderDetail>? newOrders,
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
  String? get message;
  @override
  List<OrderDetail>? get partnerOrders;
  @override
  List<OrderDetail>? get newOrders;
  @override
  int get orderTab;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
