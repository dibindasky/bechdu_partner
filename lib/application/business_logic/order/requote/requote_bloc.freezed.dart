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
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
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
  $Res call({String category, String slug});
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
    Object? slug = null,
  }) {
    return _then(_$GetQuestionsImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetQuestionsImpl implements GetQuestions {
  const _$GetQuestionsImpl({required this.category, required this.slug});

  @override
  final String category;
  @override
  final String slug;

  @override
  String toString() {
    return 'RequoteEvent.getQuestions(category: $category, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionsImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      __$$GetQuestionsImplCopyWithImpl<_$GetQuestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return getQuestions(category, slug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return getQuestions?.call(category, slug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(category, slug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class GetQuestions implements RequoteEvent {
  const factory GetQuestions(
      {required final String category,
      required final String slug}) = _$GetQuestionsImpl;

  String get category;
  String get slug;
  @JsonKey(ignore: true)
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDateAndTimeImplCopyWith<$Res> {
  factory _$$GetDateAndTimeImplCopyWith(_$GetDateAndTimeImpl value,
          $Res Function(_$GetDateAndTimeImpl) then) =
      __$$GetDateAndTimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDateAndTimeImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$GetDateAndTimeImpl>
    implements _$$GetDateAndTimeImplCopyWith<$Res> {
  __$$GetDateAndTimeImplCopyWithImpl(
      _$GetDateAndTimeImpl _value, $Res Function(_$GetDateAndTimeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDateAndTimeImpl implements GetDateAndTime {
  const _$GetDateAndTimeImpl();

  @override
  String toString() {
    return 'RequoteEvent.getDateAndTime()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDateAndTimeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return getDateAndTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return getDateAndTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getDateAndTime != null) {
      return getDateAndTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return getDateAndTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return getDateAndTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getDateAndTime != null) {
      return getDateAndTime(this);
    }
    return orElse();
  }
}

abstract class GetDateAndTime implements RequoteEvent {
  const factory GetDateAndTime() = _$GetDateAndTimeImpl;
}

/// @nodoc
abstract class _$$ResheduleOrderImplCopyWith<$Res> {
  factory _$$ResheduleOrderImplCopyWith(_$ResheduleOrderImpl value,
          $Res Function(_$ResheduleOrderImpl) then) =
      __$$ResheduleOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResheduleModel resheduleModel, String orderId});
}

/// @nodoc
class __$$ResheduleOrderImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$ResheduleOrderImpl>
    implements _$$ResheduleOrderImplCopyWith<$Res> {
  __$$ResheduleOrderImplCopyWithImpl(
      _$ResheduleOrderImpl _value, $Res Function(_$ResheduleOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resheduleModel = null,
    Object? orderId = null,
  }) {
    return _then(_$ResheduleOrderImpl(
      resheduleModel: null == resheduleModel
          ? _value.resheduleModel
          : resheduleModel // ignore: cast_nullable_to_non_nullable
              as ResheduleModel,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResheduleOrderImpl implements ResheduleOrder {
  const _$ResheduleOrderImpl(
      {required this.resheduleModel, required this.orderId});

  @override
  final ResheduleModel resheduleModel;
  @override
  final String orderId;

  @override
  String toString() {
    return 'RequoteEvent.resheduleOrder(resheduleModel: $resheduleModel, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResheduleOrderImpl &&
            (identical(other.resheduleModel, resheduleModel) ||
                other.resheduleModel == resheduleModel) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resheduleModel, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResheduleOrderImplCopyWith<_$ResheduleOrderImpl> get copyWith =>
      __$$ResheduleOrderImplCopyWithImpl<_$ResheduleOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return resheduleOrder(resheduleModel, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return resheduleOrder?.call(resheduleModel, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (resheduleOrder != null) {
      return resheduleOrder(resheduleModel, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return resheduleOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return resheduleOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (resheduleOrder != null) {
      return resheduleOrder(this);
    }
    return orElse();
  }
}

abstract class ResheduleOrder implements RequoteEvent {
  const factory ResheduleOrder(
      {required final ResheduleModel resheduleModel,
      required final String orderId}) = _$ResheduleOrderImpl;

  ResheduleModel get resheduleModel;
  String get orderId;
  @JsonKey(ignore: true)
  _$$ResheduleOrderImplCopyWith<_$ResheduleOrderImpl> get copyWith =>
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
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return changeIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return changeIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
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
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
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
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return goBackIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return goBackIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
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
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return goBackIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return goBackIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
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
abstract class _$$MarkYesOrNoImplCopyWith<$Res> {
  factory _$$MarkYesOrNoImplCopyWith(
          _$MarkYesOrNoImpl value, $Res Function(_$MarkYesOrNoImpl) then) =
      __$$MarkYesOrNoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedOption selectedOption});
}

/// @nodoc
class __$$MarkYesOrNoImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$MarkYesOrNoImpl>
    implements _$$MarkYesOrNoImplCopyWith<$Res> {
  __$$MarkYesOrNoImplCopyWithImpl(
      _$MarkYesOrNoImpl _value, $Res Function(_$MarkYesOrNoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$MarkYesOrNoImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SelectedOption,
    ));
  }
}

/// @nodoc

class _$MarkYesOrNoImpl implements MarkYesOrNo {
  const _$MarkYesOrNoImpl({required this.selectedOption});

  @override
  final SelectedOption selectedOption;

  @override
  String toString() {
    return 'RequoteEvent.markYesOrNo(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkYesOrNoImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkYesOrNoImplCopyWith<_$MarkYesOrNoImpl> get copyWith =>
      __$$MarkYesOrNoImplCopyWithImpl<_$MarkYesOrNoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return markYesOrNo(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return markYesOrNo?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (markYesOrNo != null) {
      return markYesOrNo(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return markYesOrNo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return markYesOrNo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (markYesOrNo != null) {
      return markYesOrNo(this);
    }
    return orElse();
  }
}

abstract class MarkYesOrNo implements RequoteEvent {
  const factory MarkYesOrNo({required final SelectedOption selectedOption}) =
      _$MarkYesOrNoImpl;

  SelectedOption get selectedOption;
  @JsonKey(ignore: true)
  _$$MarkYesOrNoImplCopyWith<_$MarkYesOrNoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAnswerImplCopyWith<$Res> {
  factory _$$MarkAnswerImplCopyWith(
          _$MarkAnswerImpl value, $Res Function(_$MarkAnswerImpl) then) =
      __$$MarkAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedOption selectedOption});
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
    Object? selectedOption = null,
  }) {
    return _then(_$MarkAnswerImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SelectedOption,
    ));
  }
}

/// @nodoc

class _$MarkAnswerImpl implements MarkAnswer {
  const _$MarkAnswerImpl({required this.selectedOption});

  @override
  final SelectedOption selectedOption;

  @override
  String toString() {
    return 'RequoteEvent.markAnswer(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAnswerImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAnswerImplCopyWith<_$MarkAnswerImpl> get copyWith =>
      __$$MarkAnswerImplCopyWithImpl<_$MarkAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return markAnswer(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return markAnswer?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (markAnswer != null) {
      return markAnswer(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return markAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return markAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (markAnswer != null) {
      return markAnswer(this);
    }
    return orElse();
  }
}

abstract class MarkAnswer implements RequoteEvent {
  const factory MarkAnswer({required final SelectedOption selectedOption}) =
      _$MarkAnswerImpl;

  SelectedOption get selectedOption;
  @JsonKey(ignore: true)
  _$$MarkAnswerImplCopyWith<_$MarkAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPriceImplCopyWith<$Res> {
  factory _$$GetPriceImplCopyWith(
          _$GetPriceImpl value, $Res Function(_$GetPriceImpl) then) =
      __$$GetPriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPriceImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$GetPriceImpl>
    implements _$$GetPriceImplCopyWith<$Res> {
  __$$GetPriceImplCopyWithImpl(
      _$GetPriceImpl _value, $Res Function(_$GetPriceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPriceImpl implements GetPrice {
  const _$GetPriceImpl();

  @override
  String toString() {
    return 'RequoteEvent.getPrice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPriceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return getPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return getPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getPrice != null) {
      return getPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return getPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return getPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getPrice != null) {
      return getPrice(this);
    }
    return orElse();
  }
}

abstract class GetPrice implements RequoteEvent {
  const factory GetPrice() = _$GetPriceImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$RequoteEventCopyWithImpl<$Res, _$ResetImpl>
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
    return 'RequoteEvent.reset()';
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
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
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
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements RequoteEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$RequoteState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get basePrice => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<String> get dates => throw _privateConstructorUsedError;
  List<String> get time => throw _privateConstructorUsedError;
  bool get questionLoading => throw _privateConstructorUsedError;
  bool get resheduleLoading => throw _privateConstructorUsedError;
  bool get priceCalculationLoading => throw _privateConstructorUsedError;
  bool get priceCalculationError => throw _privateConstructorUsedError;
  bool get resheduleDone => throw _privateConstructorUsedError;
  int get requoteIndex => throw _privateConstructorUsedError;
  List<Section>? get sections => throw _privateConstructorUsedError;
  Map<String, List<SelectedOption>> get selectedAnswers =>
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
      String? basePrice,
      String? category,
      String? slug,
      List<String> dates,
      List<String> time,
      bool questionLoading,
      bool resheduleLoading,
      bool priceCalculationLoading,
      bool priceCalculationError,
      bool resheduleDone,
      int requoteIndex,
      List<Section>? sections,
      Map<String, List<SelectedOption>> selectedAnswers});
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
    Object? basePrice = freezed,
    Object? category = freezed,
    Object? slug = freezed,
    Object? dates = null,
    Object? time = null,
    Object? questionLoading = null,
    Object? resheduleLoading = null,
    Object? priceCalculationLoading = null,
    Object? priceCalculationError = null,
    Object? resheduleDone = null,
    Object? requoteIndex = null,
    Object? sections = freezed,
    Object? selectedAnswers = null,
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
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      questionLoading: null == questionLoading
          ? _value.questionLoading
          : questionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleLoading: null == resheduleLoading
          ? _value.resheduleLoading
          : resheduleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationLoading: null == priceCalculationLoading
          ? _value.priceCalculationLoading
          : priceCalculationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationError: null == priceCalculationError
          ? _value.priceCalculationError
          : priceCalculationError // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleDone: null == resheduleDone
          ? _value.resheduleDone
          : resheduleDone // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteIndex: null == requoteIndex
          ? _value.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SelectedOption>>,
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
      String? basePrice,
      String? category,
      String? slug,
      List<String> dates,
      List<String> time,
      bool questionLoading,
      bool resheduleLoading,
      bool priceCalculationLoading,
      bool priceCalculationError,
      bool resheduleDone,
      int requoteIndex,
      List<Section>? sections,
      Map<String, List<SelectedOption>> selectedAnswers});
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
    Object? basePrice = freezed,
    Object? category = freezed,
    Object? slug = freezed,
    Object? dates = null,
    Object? time = null,
    Object? questionLoading = null,
    Object? resheduleLoading = null,
    Object? priceCalculationLoading = null,
    Object? priceCalculationError = null,
    Object? resheduleDone = null,
    Object? requoteIndex = null,
    Object? sections = freezed,
    Object? selectedAnswers = null,
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
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      questionLoading: null == questionLoading
          ? _value.questionLoading
          : questionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleLoading: null == resheduleLoading
          ? _value.resheduleLoading
          : resheduleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationLoading: null == priceCalculationLoading
          ? _value.priceCalculationLoading
          : priceCalculationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationError: null == priceCalculationError
          ? _value.priceCalculationError
          : priceCalculationError // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleDone: null == resheduleDone
          ? _value.resheduleDone
          : resheduleDone // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteIndex: null == requoteIndex
          ? _value.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SelectedOption>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.basePrice,
      this.category,
      this.slug,
      required final List<String> dates,
      required final List<String> time,
      required this.questionLoading,
      required this.resheduleLoading,
      required this.priceCalculationLoading,
      required this.priceCalculationError,
      required this.resheduleDone,
      required this.requoteIndex,
      final List<Section>? sections,
      required final Map<String, List<SelectedOption>> selectedAnswers})
      : _dates = dates,
        _time = time,
        _sections = sections,
        _selectedAnswers = selectedAnswers;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final String? basePrice;
  @override
  final String? category;
  @override
  final String? slug;
  final List<String> _dates;
  @override
  List<String> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  @override
  final bool questionLoading;
  @override
  final bool resheduleLoading;
  @override
  final bool priceCalculationLoading;
  @override
  final bool priceCalculationError;
  @override
  final bool resheduleDone;
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

  final Map<String, List<SelectedOption>> _selectedAnswers;
  @override
  Map<String, List<SelectedOption>> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableMapView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedAnswers);
  }

  @override
  String toString() {
    return 'RequoteState(isLoading: $isLoading, hasError: $hasError, message: $message, basePrice: $basePrice, category: $category, slug: $slug, dates: $dates, time: $time, questionLoading: $questionLoading, resheduleLoading: $resheduleLoading, priceCalculationLoading: $priceCalculationLoading, priceCalculationError: $priceCalculationError, resheduleDone: $resheduleDone, requoteIndex: $requoteIndex, sections: $sections, selectedAnswers: $selectedAnswers)';
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
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            (identical(other.questionLoading, questionLoading) ||
                other.questionLoading == questionLoading) &&
            (identical(other.resheduleLoading, resheduleLoading) ||
                other.resheduleLoading == resheduleLoading) &&
            (identical(
                    other.priceCalculationLoading, priceCalculationLoading) ||
                other.priceCalculationLoading == priceCalculationLoading) &&
            (identical(other.priceCalculationError, priceCalculationError) ||
                other.priceCalculationError == priceCalculationError) &&
            (identical(other.resheduleDone, resheduleDone) ||
                other.resheduleDone == resheduleDone) &&
            (identical(other.requoteIndex, requoteIndex) ||
                other.requoteIndex == requoteIndex) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      basePrice,
      category,
      slug,
      const DeepCollectionEquality().hash(_dates),
      const DeepCollectionEquality().hash(_time),
      questionLoading,
      resheduleLoading,
      priceCalculationLoading,
      priceCalculationError,
      resheduleDone,
      requoteIndex,
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_selectedAnswers));

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
          final String? basePrice,
          final String? category,
          final String? slug,
          required final List<String> dates,
          required final List<String> time,
          required final bool questionLoading,
          required final bool resheduleLoading,
          required final bool priceCalculationLoading,
          required final bool priceCalculationError,
          required final bool resheduleDone,
          required final int requoteIndex,
          final List<Section>? sections,
          required final Map<String, List<SelectedOption>> selectedAnswers}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  String? get basePrice;
  @override
  String? get category;
  @override
  String? get slug;
  @override
  List<String> get dates;
  @override
  List<String> get time;
  @override
  bool get questionLoading;
  @override
  bool get resheduleLoading;
  @override
  bool get priceCalculationLoading;
  @override
  bool get priceCalculationError;
  @override
  bool get resheduleDone;
  @override
  int get requoteIndex;
  @override
  List<Section>? get sections;
  @override
  Map<String, List<SelectedOption>> get selectedAnswers;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
