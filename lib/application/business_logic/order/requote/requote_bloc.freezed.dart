// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getQuestions,
    required TResult Function() changeIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function()? changeIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function()? changeIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(_ChangeIndex value) changeIndex,
    required TResult Function(_MarkAnswer value) markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(_ChangeIndex value)? changeIndex,
    TResult? Function(_MarkAnswer value)? markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(_ChangeIndex value)? changeIndex,
    TResult Function(_MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequoteEventCopyWith<$Res> {
  factory $RequoteEventCopyWith(
          RequoteEvent value, $Res Function(RequoteEvent) then) =
      _$RequoteEventCopyWithImpl<$Res, RequoteEvent>;
}

/// @nodoc
class _$RequoteEventCopyWithImpl<$Res, $Val extends RequoteEvent>
    implements $RequoteEventCopyWith<$Res> {
  _$RequoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetQuestionsImplCopyWith<$Res> {
  factory _$$GetQuestionsImplCopyWith(
          _$GetQuestionsImpl value, $Res Function(_$GetQuestionsImpl) then) =
      __$$GetQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$GetQuestionsImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$GetQuestionsImpl>
    implements _$$GetQuestionsImplCopyWith<$Res> {
  __$$GetQuestionsImplCopyWithImpl(
      _$GetQuestionsImpl _value, $Res Function(_$GetQuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetQuestionsImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetQuestionsImpl implements GetQuestions {
  const _$GetQuestionsImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'RequoteEvent.getQuestions(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionsImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      __$$GetQuestionsImplCopyWithImpl<_$GetQuestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getQuestions,
    required TResult Function() changeIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return getQuestions(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function()? changeIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return getQuestions?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function()? changeIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(_ChangeIndex value) changeIndex,
    required TResult Function(_MarkAnswer value) markAnswer,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(_ChangeIndex value)? changeIndex,
    TResult? Function(_MarkAnswer value)? markAnswer,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(_ChangeIndex value)? changeIndex,
    TResult Function(_MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class GetQuestions implements RequoteEvent {
  const factory GetQuestions({required final String category}) =
      _$GetQuestionsImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIndexImplCopyWith<$Res> {
  factory _$$ChangeIndexImplCopyWith(
          _$ChangeIndexImpl value, $Res Function(_$ChangeIndexImpl) then) =
      __$$ChangeIndexImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeIndexImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$ChangeIndexImpl>
    implements _$$ChangeIndexImplCopyWith<$Res> {
  __$$ChangeIndexImplCopyWithImpl(
      _$ChangeIndexImpl _value, $Res Function(_$ChangeIndexImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeIndexImpl implements _ChangeIndex {
  const _$ChangeIndexImpl();

  @override
  String toString() {
    return 'RequoteEvent.changeIndex()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeIndexImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getQuestions,
    required TResult Function() changeIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return changeIndex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function()? changeIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return changeIndex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function()? changeIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(_ChangeIndex value) changeIndex,
    required TResult Function(_MarkAnswer value) markAnswer,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(_ChangeIndex value)? changeIndex,
    TResult? Function(_MarkAnswer value)? markAnswer,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(_ChangeIndex value)? changeIndex,
    TResult Function(_MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeIndex implements RequoteEvent {
  const factory _ChangeIndex() = _$ChangeIndexImpl;
}

/// @nodoc
abstract class _$$MarkAnswerImplCopyWith<$Res> {
  factory _$$MarkAnswerImplCopyWith(
          _$MarkAnswerImpl value, $Res Function(_$MarkAnswerImpl) then) =
      __$$MarkAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> answer});
}

/// @nodoc
class __$$MarkAnswerImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$MarkAnswerImpl>
    implements _$$MarkAnswerImplCopyWith<$Res> {
  __$$MarkAnswerImplCopyWithImpl(
      _$MarkAnswerImpl _value, $Res Function(_$MarkAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$MarkAnswerImpl(
      answer: null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$MarkAnswerImpl implements _MarkAnswer {
  const _$MarkAnswerImpl({required final Map<String, dynamic> answer})
      : _answer = answer;

  final Map<String, dynamic> _answer;
  @override
  Map<String, dynamic> get answer {
    if (_answer is EqualUnmodifiableMapView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answer);
  }

  @override
  String toString() {
    return 'RequoteEvent.markAnswer(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAnswerImpl &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAnswerImplCopyWith<_$MarkAnswerImpl> get copyWith =>
      __$$MarkAnswerImplCopyWithImpl<_$MarkAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getQuestions,
    required TResult Function() changeIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return markAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function()? changeIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return markAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function()? changeIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) {
    if (markAnswer != null) {
      return markAnswer(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(_ChangeIndex value) changeIndex,
    required TResult Function(_MarkAnswer value) markAnswer,
  }) {
    return markAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(_ChangeIndex value)? changeIndex,
    TResult? Function(_MarkAnswer value)? markAnswer,
  }) {
    return markAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(_ChangeIndex value)? changeIndex,
    TResult Function(_MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) {
    if (markAnswer != null) {
      return markAnswer(this);
    }
    return orElse();
  }
}

abstract class _MarkAnswer implements RequoteEvent {
  const factory _MarkAnswer({required final Map<String, dynamic> answer}) =
      _$MarkAnswerImpl;

  Map<String, dynamic> get answer;
  @JsonKey(ignore: true)
  _$$MarkAnswerImplCopyWith<_$MarkAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequoteState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int get requoteIndex => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get map => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get markedanswer =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequoteStateCopyWith<RequoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequoteStateCopyWith<$Res> {
  factory $RequoteStateCopyWith(
          RequoteState value, $Res Function(RequoteState) then) =
      _$RequoteStateCopyWithImpl<$Res, RequoteState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      int requoteIndex,
      List<Map<String, dynamic>> map,
      List<Map<String, dynamic>> markedanswer});
}

/// @nodoc
class _$RequoteStateCopyWithImpl<$Res, $Val extends RequoteState>
    implements $RequoteStateCopyWith<$Res> {
  _$RequoteStateCopyWithImpl(this._value, this._then);

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
    Object? requoteIndex = null,
    Object? map = null,
    Object? markedanswer = null,
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
      requoteIndex: null == requoteIndex
          ? _value.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      markedanswer: null == markedanswer
          ? _value.markedanswer
          : markedanswer // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RequoteStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      int requoteIndex,
      List<Map<String, dynamic>> map,
      List<Map<String, dynamic>> markedanswer});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RequoteStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? requoteIndex = null,
    Object? map = null,
    Object? markedanswer = null,
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
      requoteIndex: null == requoteIndex
          ? _value.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      map: null == map
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      markedanswer: null == markedanswer
          ? _value._markedanswer
          : markedanswer // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      required this.requoteIndex,
      required final List<Map<String, dynamic>> map,
      required final List<Map<String, dynamic>> markedanswer})
      : _map = map,
        _markedanswer = markedanswer;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final int requoteIndex;
  final List<Map<String, dynamic>> _map;
  @override
  List<Map<String, dynamic>> get map {
    if (_map is EqualUnmodifiableListView) return _map;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_map);
  }

  final List<Map<String, dynamic>> _markedanswer;
  @override
  List<Map<String, dynamic>> get markedanswer {
    if (_markedanswer is EqualUnmodifiableListView) return _markedanswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markedanswer);
  }

  @override
  String toString() {
    return 'RequoteState(isLoading: $isLoading, hasError: $hasError, message: $message, requoteIndex: $requoteIndex, map: $map, markedanswer: $markedanswer)';
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
            (identical(other.requoteIndex, requoteIndex) ||
                other.requoteIndex == requoteIndex) &&
            const DeepCollectionEquality().equals(other._map, _map) &&
            const DeepCollectionEquality()
                .equals(other._markedanswer, _markedanswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      requoteIndex,
      const DeepCollectionEquality().hash(_map),
      const DeepCollectionEquality().hash(_markedanswer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements RequoteState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      required final int requoteIndex,
      required final List<Map<String, dynamic>> map,
      required final List<Map<String, dynamic>> markedanswer}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  int get requoteIndex;
  @override
  List<Map<String, dynamic>> get map;
  @override
  List<Map<String, dynamic>> get markedanswer;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
