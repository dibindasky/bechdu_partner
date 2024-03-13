// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PointsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGst,
    required TResult Function() getCoinValue,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGst,
    TResult? Function()? getCoinValue,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGst,
    TResult Function()? getCoinValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGst value) getGst,
    required TResult Function(GetCoinValue value) getCoinValue,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGst value)? getGst,
    TResult? Function(GetCoinValue value)? getCoinValue,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGst value)? getGst,
    TResult Function(GetCoinValue value)? getCoinValue,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsEventCopyWith<$Res> {
  factory $PointsEventCopyWith(
          PointsEvent value, $Res Function(PointsEvent) then) =
      _$PointsEventCopyWithImpl<$Res, PointsEvent>;
}

/// @nodoc
class _$PointsEventCopyWithImpl<$Res, $Val extends PointsEvent>
    implements $PointsEventCopyWith<$Res> {
  _$PointsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGstImplCopyWith<$Res> {
  factory _$$GetGstImplCopyWith(
          _$GetGstImpl value, $Res Function(_$GetGstImpl) then) =
      __$$GetGstImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGstImplCopyWithImpl<$Res>
    extends _$PointsEventCopyWithImpl<$Res, _$GetGstImpl>
    implements _$$GetGstImplCopyWith<$Res> {
  __$$GetGstImplCopyWithImpl(
      _$GetGstImpl _value, $Res Function(_$GetGstImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGstImpl implements GetGst {
  const _$GetGstImpl();

  @override
  String toString() {
    return 'PointsEvent.getGst()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGstImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGst,
    required TResult Function() getCoinValue,
    required TResult Function() reset,
  }) {
    return getGst();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGst,
    TResult? Function()? getCoinValue,
    TResult? Function()? reset,
  }) {
    return getGst?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGst,
    TResult Function()? getCoinValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getGst != null) {
      return getGst();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGst value) getGst,
    required TResult Function(GetCoinValue value) getCoinValue,
    required TResult Function(Reset value) reset,
  }) {
    return getGst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGst value)? getGst,
    TResult? Function(GetCoinValue value)? getCoinValue,
    TResult? Function(Reset value)? reset,
  }) {
    return getGst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGst value)? getGst,
    TResult Function(GetCoinValue value)? getCoinValue,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getGst != null) {
      return getGst(this);
    }
    return orElse();
  }
}

abstract class GetGst implements PointsEvent {
  const factory GetGst() = _$GetGstImpl;
}

/// @nodoc
abstract class _$$GetCoinValueImplCopyWith<$Res> {
  factory _$$GetCoinValueImplCopyWith(
          _$GetCoinValueImpl value, $Res Function(_$GetCoinValueImpl) then) =
      __$$GetCoinValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCoinValueImplCopyWithImpl<$Res>
    extends _$PointsEventCopyWithImpl<$Res, _$GetCoinValueImpl>
    implements _$$GetCoinValueImplCopyWith<$Res> {
  __$$GetCoinValueImplCopyWithImpl(
      _$GetCoinValueImpl _value, $Res Function(_$GetCoinValueImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCoinValueImpl implements GetCoinValue {
  const _$GetCoinValueImpl();

  @override
  String toString() {
    return 'PointsEvent.getCoinValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCoinValueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGst,
    required TResult Function() getCoinValue,
    required TResult Function() reset,
  }) {
    return getCoinValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGst,
    TResult? Function()? getCoinValue,
    TResult? Function()? reset,
  }) {
    return getCoinValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGst,
    TResult Function()? getCoinValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getCoinValue != null) {
      return getCoinValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGst value) getGst,
    required TResult Function(GetCoinValue value) getCoinValue,
    required TResult Function(Reset value) reset,
  }) {
    return getCoinValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGst value)? getGst,
    TResult? Function(GetCoinValue value)? getCoinValue,
    TResult? Function(Reset value)? reset,
  }) {
    return getCoinValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGst value)? getGst,
    TResult Function(GetCoinValue value)? getCoinValue,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getCoinValue != null) {
      return getCoinValue(this);
    }
    return orElse();
  }
}

abstract class GetCoinValue implements PointsEvent {
  const factory GetCoinValue() = _$GetCoinValueImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$PointsEventCopyWithImpl<$Res, _$ResetImpl>
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
    return 'PointsEvent.reset()';
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
    required TResult Function() getGst,
    required TResult Function() getCoinValue,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGst,
    TResult? Function()? getCoinValue,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGst,
    TResult Function()? getCoinValue,
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
    required TResult Function(GetGst value) getGst,
    required TResult Function(GetCoinValue value) getCoinValue,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGst value)? getGst,
    TResult? Function(GetCoinValue value)? getCoinValue,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGst value)? getGst,
    TResult Function(GetCoinValue value)? getCoinValue,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements PointsEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$PointsState {
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int? get gst => throw _privateConstructorUsedError;
  int? get coinValue => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointsStateCopyWith<PointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsStateCopyWith<$Res> {
  factory $PointsStateCopyWith(
          PointsState value, $Res Function(PointsState) then) =
      _$PointsStateCopyWithImpl<$Res, PointsState>;
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      int? gst,
      int? coinValue,
      String? message});
}

/// @nodoc
class _$PointsStateCopyWithImpl<$Res, $Val extends PointsState>
    implements $PointsStateCopyWith<$Res> {
  _$PointsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? gst = freezed,
    Object? coinValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int?,
      coinValue: freezed == coinValue
          ? _value.coinValue
          : coinValue // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PointsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      int? gst,
      int? coinValue,
      String? message});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PointsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? gst = freezed,
    Object? coinValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_$InitialImpl(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int?,
      coinValue: freezed == coinValue
          ? _value.coinValue
          : coinValue // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.hasError,
      required this.isLoading,
      this.gst,
      this.coinValue,
      this.message});

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final int? gst;
  @override
  final int? coinValue;
  @override
  final String? message;

  @override
  String toString() {
    return 'PointsState(hasError: $hasError, isLoading: $isLoading, gst: $gst, coinValue: $coinValue, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.coinValue, coinValue) ||
                other.coinValue == coinValue) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasError, isLoading, gst, coinValue, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements PointsState {
  const factory _Initial(
      {required final bool hasError,
      required final bool isLoading,
      final int? gst,
      final int? coinValue,
      final String? message}) = _$InitialImpl;

  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  int? get gst;
  @override
  int? get coinValue;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
