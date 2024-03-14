// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRole value) getRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRole value)? getRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRole value)? getRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleEventCopyWith<$Res> {
  factory $RoleEventCopyWith(RoleEvent value, $Res Function(RoleEvent) then) =
      _$RoleEventCopyWithImpl<$Res, RoleEvent>;
}

/// @nodoc
class _$RoleEventCopyWithImpl<$Res, $Val extends RoleEvent>
    implements $RoleEventCopyWith<$Res> {
  _$RoleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRoleImplCopyWith<$Res> {
  factory _$$GetRoleImplCopyWith(
          _$GetRoleImpl value, $Res Function(_$GetRoleImpl) then) =
      __$$GetRoleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRoleImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$GetRoleImpl>
    implements _$$GetRoleImplCopyWith<$Res> {
  __$$GetRoleImplCopyWithImpl(
      _$GetRoleImpl _value, $Res Function(_$GetRoleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoleImpl implements GetRole {
  const _$GetRoleImpl();

  @override
  String toString() {
    return 'RoleEvent.getRole()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRoleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRole,
  }) {
    return getRole();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRole,
  }) {
    return getRole?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRole,
    required TResult orElse(),
  }) {
    if (getRole != null) {
      return getRole();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRole value) getRole,
  }) {
    return getRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRole value)? getRole,
  }) {
    return getRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRole value)? getRole,
    required TResult orElse(),
  }) {
    if (getRole != null) {
      return getRole(this);
    }
    return orElse();
  }
}

abstract class GetRole implements RoleEvent {
  const factory GetRole() = _$GetRoleImpl;
}

/// @nodoc
mixin _$RoleState {
  bool get partner => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool partner) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool partner)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool partner)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleStateCopyWith<RoleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res, RoleState>;
  @useResult
  $Res call({bool partner});
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res, $Val extends RoleState>
    implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_value.copyWith(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RoleStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool partner});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_$InitialImpl(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.partner});

  @override
  final bool partner;

  @override
  String toString() {
    return 'RoleState.initial(partner: $partner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.partner, partner) || other.partner == partner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool partner) initial,
  }) {
    return initial(partner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool partner)? initial,
  }) {
    return initial?.call(partner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool partner)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(partner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoleState {
  const factory _Initial({required final bool partner}) = _$InitialImpl;

  @override
  bool get partner;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
