// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool reset) getNotifications,
    required TResult Function() getNotificationsNext,
    required TResult Function() resetLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool reset)? getNotifications,
    TResult? Function()? getNotificationsNext,
    TResult? Function()? resetLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool reset)? getNotifications,
    TResult Function()? getNotificationsNext,
    TResult Function()? resetLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(GetNotificationsNext value) getNotificationsNext,
    required TResult Function(ResetLength value) resetLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(GetNotificationsNext value)? getNotificationsNext,
    TResult? Function(ResetLength value)? resetLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(GetNotificationsNext value)? getNotificationsNext,
    TResult Function(ResetLength value)? resetLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotificationsImplCopyWith<$Res> {
  factory _$$GetNotificationsImplCopyWith(_$GetNotificationsImpl value,
          $Res Function(_$GetNotificationsImpl) then) =
      __$$GetNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool reset});
}

/// @nodoc
class __$$GetNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$GetNotificationsImpl>
    implements _$$GetNotificationsImplCopyWith<$Res> {
  __$$GetNotificationsImplCopyWithImpl(_$GetNotificationsImpl _value,
      $Res Function(_$GetNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reset = null,
  }) {
    return _then(_$GetNotificationsImpl(
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetNotificationsImpl implements GetNotifications {
  const _$GetNotificationsImpl({required this.reset});

  @override
  final bool reset;

  @override
  String toString() {
    return 'NotificationEvent.getNotifications(reset: $reset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsImpl &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool reset) getNotifications,
    required TResult Function() getNotificationsNext,
    required TResult Function() resetLength,
  }) {
    return getNotifications(reset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool reset)? getNotifications,
    TResult? Function()? getNotificationsNext,
    TResult? Function()? resetLength,
  }) {
    return getNotifications?.call(reset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool reset)? getNotifications,
    TResult Function()? getNotificationsNext,
    TResult Function()? resetLength,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(reset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(GetNotificationsNext value) getNotificationsNext,
    required TResult Function(ResetLength value) resetLength,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(GetNotificationsNext value)? getNotificationsNext,
    TResult? Function(ResetLength value)? resetLength,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(GetNotificationsNext value)? getNotificationsNext,
    TResult Function(ResetLength value)? resetLength,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotifications implements NotificationEvent {
  const factory GetNotifications({required final bool reset}) =
      _$GetNotificationsImpl;

  bool get reset;
  @JsonKey(ignore: true)
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotificationsNextImplCopyWith<$Res> {
  factory _$$GetNotificationsNextImplCopyWith(_$GetNotificationsNextImpl value,
          $Res Function(_$GetNotificationsNextImpl) then) =
      __$$GetNotificationsNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationsNextImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$GetNotificationsNextImpl>
    implements _$$GetNotificationsNextImplCopyWith<$Res> {
  __$$GetNotificationsNextImplCopyWithImpl(_$GetNotificationsNextImpl _value,
      $Res Function(_$GetNotificationsNextImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNotificationsNextImpl implements GetNotificationsNext {
  const _$GetNotificationsNextImpl();

  @override
  String toString() {
    return 'NotificationEvent.getNotificationsNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool reset) getNotifications,
    required TResult Function() getNotificationsNext,
    required TResult Function() resetLength,
  }) {
    return getNotificationsNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool reset)? getNotifications,
    TResult? Function()? getNotificationsNext,
    TResult? Function()? resetLength,
  }) {
    return getNotificationsNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool reset)? getNotifications,
    TResult Function()? getNotificationsNext,
    TResult Function()? resetLength,
    required TResult orElse(),
  }) {
    if (getNotificationsNext != null) {
      return getNotificationsNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(GetNotificationsNext value) getNotificationsNext,
    required TResult Function(ResetLength value) resetLength,
  }) {
    return getNotificationsNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(GetNotificationsNext value)? getNotificationsNext,
    TResult? Function(ResetLength value)? resetLength,
  }) {
    return getNotificationsNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(GetNotificationsNext value)? getNotificationsNext,
    TResult Function(ResetLength value)? resetLength,
    required TResult orElse(),
  }) {
    if (getNotificationsNext != null) {
      return getNotificationsNext(this);
    }
    return orElse();
  }
}

abstract class GetNotificationsNext implements NotificationEvent {
  const factory GetNotificationsNext() = _$GetNotificationsNextImpl;
}

/// @nodoc
abstract class _$$ResetLengthImplCopyWith<$Res> {
  factory _$$ResetLengthImplCopyWith(
          _$ResetLengthImpl value, $Res Function(_$ResetLengthImpl) then) =
      __$$ResetLengthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetLengthImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ResetLengthImpl>
    implements _$$ResetLengthImplCopyWith<$Res> {
  __$$ResetLengthImplCopyWithImpl(
      _$ResetLengthImpl _value, $Res Function(_$ResetLengthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetLengthImpl implements ResetLength {
  const _$ResetLengthImpl();

  @override
  String toString() {
    return 'NotificationEvent.resetLength()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetLengthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool reset) getNotifications,
    required TResult Function() getNotificationsNext,
    required TResult Function() resetLength,
  }) {
    return resetLength();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool reset)? getNotifications,
    TResult? Function()? getNotificationsNext,
    TResult? Function()? resetLength,
  }) {
    return resetLength?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool reset)? getNotifications,
    TResult Function()? getNotificationsNext,
    TResult Function()? resetLength,
    required TResult orElse(),
  }) {
    if (resetLength != null) {
      return resetLength();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(GetNotificationsNext value) getNotificationsNext,
    required TResult Function(ResetLength value) resetLength,
  }) {
    return resetLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(GetNotificationsNext value)? getNotificationsNext,
    TResult? Function(ResetLength value)? resetLength,
  }) {
    return resetLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(GetNotificationsNext value)? getNotificationsNext,
    TResult Function(ResetLength value)? resetLength,
    required TResult orElse(),
  }) {
    if (resetLength != null) {
      return resetLength(this);
    }
    return orElse();
  }
}

abstract class ResetLength implements NotificationEvent {
  const factory ResetLength() = _$ResetLengthImpl;
}

/// @nodoc
mixin _$NotificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get pageLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  int? get notiLength => throw _privateConstructorUsedError;
  int? get totalNotiLength => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<NotificationModel>? get notificationList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool pageLoading,
      bool hasError,
      int? notiLength,
      int? totalNotiLength,
      String? message,
      List<NotificationModel>? notificationList});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pageLoading = null,
    Object? hasError = null,
    Object? notiLength = freezed,
    Object? totalNotiLength = freezed,
    Object? message = freezed,
    Object? notificationList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageLoading: null == pageLoading
          ? _value.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      notiLength: freezed == notiLength
          ? _value.notiLength
          : notiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNotiLength: freezed == totalNotiLength
          ? _value.totalNotiLength
          : totalNotiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationList: freezed == notificationList
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool pageLoading,
      bool hasError,
      int? notiLength,
      int? totalNotiLength,
      String? message,
      List<NotificationModel>? notificationList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pageLoading = null,
    Object? hasError = null,
    Object? notiLength = freezed,
    Object? totalNotiLength = freezed,
    Object? message = freezed,
    Object? notificationList = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageLoading: null == pageLoading
          ? _value.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      notiLength: freezed == notiLength
          ? _value.notiLength
          : notiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNotiLength: freezed == totalNotiLength
          ? _value.totalNotiLength
          : totalNotiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationList: freezed == notificationList
          ? _value._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.pageLoading,
      required this.hasError,
      this.notiLength,
      this.totalNotiLength,
      this.message,
      final List<NotificationModel>? notificationList})
      : _notificationList = notificationList;

  @override
  final bool isLoading;
  @override
  final bool pageLoading;
  @override
  final bool hasError;
  @override
  final int? notiLength;
  @override
  final int? totalNotiLength;
  @override
  final String? message;
  final List<NotificationModel>? _notificationList;
  @override
  List<NotificationModel>? get notificationList {
    final value = _notificationList;
    if (value == null) return null;
    if (_notificationList is EqualUnmodifiableListView)
      return _notificationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationState(isLoading: $isLoading, pageLoading: $pageLoading, hasError: $hasError, notiLength: $notiLength, totalNotiLength: $totalNotiLength, message: $message, notificationList: $notificationList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pageLoading, pageLoading) ||
                other.pageLoading == pageLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.notiLength, notiLength) ||
                other.notiLength == notiLength) &&
            (identical(other.totalNotiLength, totalNotiLength) ||
                other.totalNotiLength == totalNotiLength) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      pageLoading,
      hasError,
      notiLength,
      totalNotiLength,
      message,
      const DeepCollectionEquality().hash(_notificationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements NotificationState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool pageLoading,
      required final bool hasError,
      final int? notiLength,
      final int? totalNotiLength,
      final String? message,
      final List<NotificationModel>? notificationList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get pageLoading;
  @override
  bool get hasError;
  @override
  int? get notiLength;
  @override
  int? get totalNotiLength;
  @override
  String? get message;
  @override
  List<NotificationModel>? get notificationList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
