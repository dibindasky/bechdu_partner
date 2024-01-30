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
    required TResult Function() acceptOrder,
    required TResult Function() makeNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptOrder,
    TResult? Function()? makeNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptOrder,
    TResult Function()? makeNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_MakeNewOrder value) makeNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_MakeNewOrder value)? makeNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_MakeNewOrder value)? makeNewOrder,
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
}

/// @nodoc
class __$$AcceptOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AcceptOrderImpl>
    implements _$$AcceptOrderImplCopyWith<$Res> {
  __$$AcceptOrderImplCopyWithImpl(
      _$AcceptOrderImpl _value, $Res Function(_$AcceptOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptOrderImpl implements _AcceptOrder {
  const _$AcceptOrderImpl();

  @override
  String toString() {
    return 'OrdersEvent.acceptOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptOrder,
    required TResult Function() makeNewOrder,
  }) {
    return acceptOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptOrder,
    TResult? Function()? makeNewOrder,
  }) {
    return acceptOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptOrder,
    TResult Function()? makeNewOrder,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_MakeNewOrder value) makeNewOrder,
  }) {
    return acceptOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_MakeNewOrder value)? makeNewOrder,
  }) {
    return acceptOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_MakeNewOrder value)? makeNewOrder,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(this);
    }
    return orElse();
  }
}

abstract class _AcceptOrder implements OrdersEvent {
  const factory _AcceptOrder() = _$AcceptOrderImpl;
}

/// @nodoc
abstract class _$$MakeNewOrderImplCopyWith<$Res> {
  factory _$$MakeNewOrderImplCopyWith(
          _$MakeNewOrderImpl value, $Res Function(_$MakeNewOrderImpl) then) =
      __$$MakeNewOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MakeNewOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$MakeNewOrderImpl>
    implements _$$MakeNewOrderImplCopyWith<$Res> {
  __$$MakeNewOrderImplCopyWithImpl(
      _$MakeNewOrderImpl _value, $Res Function(_$MakeNewOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MakeNewOrderImpl implements _MakeNewOrder {
  const _$MakeNewOrderImpl();

  @override
  String toString() {
    return 'OrdersEvent.makeNewOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MakeNewOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptOrder,
    required TResult Function() makeNewOrder,
  }) {
    return makeNewOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptOrder,
    TResult? Function()? makeNewOrder,
  }) {
    return makeNewOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptOrder,
    TResult Function()? makeNewOrder,
    required TResult orElse(),
  }) {
    if (makeNewOrder != null) {
      return makeNewOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_MakeNewOrder value) makeNewOrder,
  }) {
    return makeNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptOrder value)? acceptOrder,
    TResult? Function(_MakeNewOrder value)? makeNewOrder,
  }) {
    return makeNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_MakeNewOrder value)? makeNewOrder,
    required TResult orElse(),
  }) {
    if (makeNewOrder != null) {
      return makeNewOrder(this);
    }
    return orElse();
  }
}

abstract class _MakeNewOrder implements OrdersEvent {
  const factory _MakeNewOrder() = _$MakeNewOrderImpl;
}

/// @nodoc
mixin _$OrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get showNewNotification => throw _privateConstructorUsedError;
  bool get newOrder => throw _privateConstructorUsedError;

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
      String? message,
      bool showNewNotification,
      bool newOrder});
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
    Object? message = freezed,
    Object? showNewNotification = null,
    Object? newOrder = null,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showNewNotification: null == showNewNotification
          ? _value.showNewNotification
          : showNewNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      newOrder: null == newOrder
          ? _value.newOrder
          : newOrder // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String? message,
      bool showNewNotification,
      bool newOrder});
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
    Object? message = freezed,
    Object? showNewNotification = null,
    Object? newOrder = null,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showNewNotification: null == showNewNotification
          ? _value.showNewNotification
          : showNewNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      newOrder: null == newOrder
          ? _value.newOrder
          : newOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      required this.showNewNotification,
      required this.newOrder});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final bool showNewNotification;
  @override
  final bool newOrder;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, hasError: $hasError, message: $message, showNewNotification: $showNewNotification, newOrder: $newOrder)';
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
            (identical(other.message, message) || other.message == message) &&
            (identical(other.showNewNotification, showNewNotification) ||
                other.showNewNotification == showNewNotification) &&
            (identical(other.newOrder, newOrder) ||
                other.newOrder == newOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, message, showNewNotification, newOrder);

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
      final String? message,
      required final bool showNewNotification,
      required final bool newOrder}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  bool get showNewNotification;
  @override
  bool get newOrder;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
