// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneNumberModel phoneNumberModel});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberModel = null,
  }) {
    return _then(_$SendOtpImpl(
      phoneNumberModel: null == phoneNumberModel
          ? _value.phoneNumberModel
          : phoneNumberModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements SendOtp {
  const _$SendOtpImpl({required this.phoneNumberModel});

  @override
  final PhoneNumberModel phoneNumberModel;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(phoneNumberModel: $phoneNumberModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.phoneNumberModel, phoneNumberModel) ||
                other.phoneNumberModel == phoneNumberModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
  }) {
    return sendOtp(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
  }) {
    return sendOtp?.call(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(phoneNumberModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtp implements AuthEvent {
  const factory SendOtp({required final PhoneNumberModel phoneNumberModel}) =
      _$SendOtpImpl;

  PhoneNumberModel get phoneNumberModel;
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyOtpModel verifyOtpModel});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyOtpModel = null,
  }) {
    return _then(_$VerifyOtpImpl(
      verifyOtpModel: null == verifyOtpModel
          ? _value.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl({required this.verifyOtpModel});

  @override
  final VerifyOtpModel verifyOtpModel;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(verifyOtpModel: $verifyOtpModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.verifyOtpModel, verifyOtpModel) ||
                other.verifyOtpModel == verifyOtpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyOtpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
  }) {
    return verifyOtp(verifyOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
  }) {
    return verifyOtp?.call(verifyOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(verifyOtpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements AuthEvent {
  const factory VerifyOtp({required final VerifyOtpModel verifyOtpModel}) =
      _$VerifyOtpImpl;

  VerifyOtpModel get verifyOtpModel;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AgreePolicyImplCopyWith<$Res> {
  factory _$$AgreePolicyImplCopyWith(
          _$AgreePolicyImpl value, $Res Function(_$AgreePolicyImpl) then) =
      __$$AgreePolicyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AgreePolicyImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AgreePolicyImpl>
    implements _$$AgreePolicyImplCopyWith<$Res> {
  __$$AgreePolicyImplCopyWithImpl(
      _$AgreePolicyImpl _value, $Res Function(_$AgreePolicyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AgreePolicyImpl implements AgreePolicy {
  const _$AgreePolicyImpl();

  @override
  String toString() {
    return 'AuthEvent.agreePolicy()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AgreePolicyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
  }) {
    return agreePolicy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
  }) {
    return agreePolicy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (agreePolicy != null) {
      return agreePolicy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
  }) {
    return agreePolicy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
  }) {
    return agreePolicy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (agreePolicy != null) {
      return agreePolicy(this);
    }
    return orElse();
  }
}

abstract class AgreePolicy implements AuthEvent {
  const factory AgreePolicy() = _$AgreePolicyImpl;
}

/// @nodoc
abstract class _$$LogImplCopyWith<$Res> {
  factory _$$LogImplCopyWith(_$LogImpl value, $Res Function(_$LogImpl) then) =
      __$$LogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogImpl>
    implements _$$LogImplCopyWith<$Res> {
  __$$LogImplCopyWithImpl(_$LogImpl _value, $Res Function(_$LogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogImpl implements Log {
  const _$LogImpl();

  @override
  String toString() {
    return 'AuthEvent.log()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
  }) {
    return log();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
  }) {
    return log?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
  }) {
    return log(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
  }) {
    return log?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log(this);
    }
    return orElse();
  }
}

abstract class Log implements AuthEvent {
  const factory Log() = _$LogImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get otpSend => throw _privateConstructorUsedError;
  bool get otpVerificationError => throw _privateConstructorUsedError;
  bool get isLogin => throw _privateConstructorUsedError;
  bool get agreePolicy => throw _privateConstructorUsedError;
  bool get agreePolicyError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool otpSend,
      bool otpVerificationError,
      bool isLogin,
      bool agreePolicy,
      bool agreePolicyError,
      String? message});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? otpSend = null,
    Object? otpVerificationError = null,
    Object? isLogin = null,
    Object? agreePolicy = null,
    Object? agreePolicyError = null,
    Object? message = freezed,
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
      otpSend: null == otpSend
          ? _value.otpSend
          : otpSend // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerificationError: null == otpVerificationError
          ? _value.otpVerificationError
          : otpVerificationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicy: null == agreePolicy
          ? _value.agreePolicy
          : agreePolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicyError: null == agreePolicyError
          ? _value.agreePolicyError
          : agreePolicyError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool otpSend,
      bool otpVerificationError,
      bool isLogin,
      bool agreePolicy,
      bool agreePolicyError,
      String? message});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? otpSend = null,
    Object? otpVerificationError = null,
    Object? isLogin = null,
    Object? agreePolicy = null,
    Object? agreePolicyError = null,
    Object? message = freezed,
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
      otpSend: null == otpSend
          ? _value.otpSend
          : otpSend // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerificationError: null == otpVerificationError
          ? _value.otpVerificationError
          : otpVerificationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicy: null == agreePolicy
          ? _value.agreePolicy
          : agreePolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicyError: null == agreePolicyError
          ? _value.agreePolicyError
          : agreePolicyError // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {required this.isLoading,
      required this.hasError,
      required this.otpSend,
      required this.otpVerificationError,
      required this.isLogin,
      required this.agreePolicy,
      required this.agreePolicyError,
      this.message});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool otpSend;
  @override
  final bool otpVerificationError;
  @override
  final bool isLogin;
  @override
  final bool agreePolicy;
  @override
  final bool agreePolicyError;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, otpSend: $otpSend, otpVerificationError: $otpVerificationError, isLogin: $isLogin, agreePolicy: $agreePolicy, agreePolicyError: $agreePolicyError, message: $message)';
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
            (identical(other.otpSend, otpSend) || other.otpSend == otpSend) &&
            (identical(other.otpVerificationError, otpVerificationError) ||
                other.otpVerificationError == otpVerificationError) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.agreePolicy, agreePolicy) ||
                other.agreePolicy == agreePolicy) &&
            (identical(other.agreePolicyError, agreePolicyError) ||
                other.agreePolicyError == agreePolicyError) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, otpSend,
      otpVerificationError, isLogin, agreePolicy, agreePolicyError, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool otpSend,
      required final bool otpVerificationError,
      required final bool isLogin,
      required final bool agreePolicy,
      required final bool agreePolicyError,
      final String? message}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get otpSend;
  @override
  bool get otpVerificationError;
  @override
  bool get isLogin;
  @override
  bool get agreePolicy;
  @override
  bool get agreePolicyError;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
