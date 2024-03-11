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
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkAnswer value) markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkAnswer value)? markAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkAnswer value)? markAnswer,
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
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return getQuestions(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return getQuestions?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
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
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkAnswer value) markAnswer,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkAnswer value)? markAnswer,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkAnswer value)? markAnswer,
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
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeIndexImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$ChangeIndexImpl>
    implements _$$ChangeIndexImplCopyWith<$Res> {
  __$$ChangeIndexImplCopyWithImpl(
      _$ChangeIndexImpl _value, $Res Function(_$ChangeIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeIndexImpl implements ChangeIndex {
  const _$ChangeIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'RequoteEvent.changeIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIndexImplCopyWith<_$ChangeIndexImpl> get copyWith =>
      __$$ChangeIndexImplCopyWithImpl<_$ChangeIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getQuestions,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return changeIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return changeIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkAnswer value) markAnswer,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkAnswer value)? markAnswer,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeIndex implements RequoteEvent {
  const factory ChangeIndex({required final int index}) = _$ChangeIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeIndexImplCopyWith<_$ChangeIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackIndexImplCopyWith<$Res> {
  factory _$$GoBackIndexImplCopyWith(
          _$GoBackIndexImpl value, $Res Function(_$GoBackIndexImpl) then) =
      __$$GoBackIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$GoBackIndexImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$GoBackIndexImpl>
    implements _$$GoBackIndexImplCopyWith<$Res> {
  __$$GoBackIndexImplCopyWithImpl(
      _$GoBackIndexImpl _value, $Res Function(_$GoBackIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$GoBackIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GoBackIndexImpl implements GoBackIndex {
  const _$GoBackIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'RequoteEvent.goBackIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoBackIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoBackIndexImplCopyWith<_$GoBackIndexImpl> get copyWith =>
      __$$GoBackIndexImplCopyWithImpl<_$GoBackIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getQuestions,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return goBackIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return goBackIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(Map<String, dynamic> answer)? markAnswer,
    required TResult orElse(),
  }) {
    if (goBackIndex != null) {
      return goBackIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkAnswer value) markAnswer,
  }) {
    return goBackIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkAnswer value)? markAnswer,
  }) {
    return goBackIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) {
    if (goBackIndex != null) {
      return goBackIndex(this);
    }
    return orElse();
  }
}

abstract class GoBackIndex implements RequoteEvent {
  const factory GoBackIndex({required final int index}) = _$GoBackIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$GoBackIndexImplCopyWith<_$GoBackIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$MarkAnswerImpl implements MarkAnswer {
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
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(Map<String, dynamic> answer) markAnswer,
  }) {
    return markAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getQuestions,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(Map<String, dynamic> answer)? markAnswer,
  }) {
    return markAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getQuestions,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
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
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkAnswer value) markAnswer,
  }) {
    return markAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkAnswer value)? markAnswer,
  }) {
    return markAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkAnswer value)? markAnswer,
    required TResult orElse(),
  }) {
    if (markAnswer != null) {
      return markAnswer(this);
    }
    return orElse();
  }
}

abstract class MarkAnswer implements RequoteEvent {
  const factory MarkAnswer({required final Map<String, dynamic> answer}) =
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
  bool get questionLoading => throw _privateConstructorUsedError;
  int get requoteIndex => throw _privateConstructorUsedError;
  List<Section>? get sections => throw _privateConstructorUsedError;
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
      bool questionLoading,
      int requoteIndex,
      List<Section>? sections,
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
    Object? questionLoading = null,
    Object? requoteIndex = null,
    Object? sections = freezed,
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
      questionLoading: null == questionLoading
          ? _value.questionLoading
          : questionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteIndex: null == requoteIndex
          ? _value.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
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
      bool questionLoading,
      int requoteIndex,
      List<Section>? sections,
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
    Object? questionLoading = null,
    Object? requoteIndex = null,
    Object? sections = freezed,
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
      questionLoading: null == questionLoading
          ? _value.questionLoading
          : questionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteIndex: null == requoteIndex
          ? _value.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
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
      required this.questionLoading,
      required this.requoteIndex,
      final List<Section>? sections,
      required final List<Map<String, dynamic>> map,
      required final List<Map<String, dynamic>> markedanswer})
      : _sections = sections,
        _map = map,
        _markedanswer = markedanswer;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final bool questionLoading;
  @override
  final int requoteIndex;
  final List<Section>? _sections;
  @override
  List<Section>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'RequoteState(isLoading: $isLoading, hasError: $hasError, message: $message, questionLoading: $questionLoading, requoteIndex: $requoteIndex, sections: $sections, map: $map, markedanswer: $markedanswer)';
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
            (identical(other.questionLoading, questionLoading) ||
                other.questionLoading == questionLoading) &&
            (identical(other.requoteIndex, requoteIndex) ||
                other.requoteIndex == requoteIndex) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
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
      questionLoading,
      requoteIndex,
      const DeepCollectionEquality().hash(_sections),
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
      required final bool questionLoading,
      required final int requoteIndex,
      final List<Section>? sections,
      required final List<Map<String, dynamic>> map,
      required final List<Map<String, dynamic>> markedanswer}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  bool get questionLoading;
  @override
  int get requoteIndex;
  @override
  List<Section>? get sections;
  @override
  List<Map<String, dynamic>> get map;
  @override
  List<Map<String, dynamic>> get markedanswer;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
