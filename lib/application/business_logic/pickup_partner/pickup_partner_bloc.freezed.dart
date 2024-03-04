// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_partner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickupPartnerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupPartnerEventCopyWith<$Res> {
  factory $PickupPartnerEventCopyWith(
          PickupPartnerEvent value, $Res Function(PickupPartnerEvent) then) =
      _$PickupPartnerEventCopyWithImpl<$Res, PickupPartnerEvent>;
}

/// @nodoc
class _$PickupPartnerEventCopyWithImpl<$Res, $Val extends PickupPartnerEvent>
    implements $PickupPartnerEventCopyWith<$Res> {
  _$PickupPartnerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPickupPartnerImplCopyWith<$Res> {
  factory _$$AddPickupPartnerImplCopyWith(_$AddPickupPartnerImpl value,
          $Res Function(_$AddPickupPartnerImpl) then) =
      __$$AddPickupPartnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddPickupPartnerModel addPickupPartnerModel});
}

/// @nodoc
class __$$AddPickupPartnerImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res, _$AddPickupPartnerImpl>
    implements _$$AddPickupPartnerImplCopyWith<$Res> {
  __$$AddPickupPartnerImplCopyWithImpl(_$AddPickupPartnerImpl _value,
      $Res Function(_$AddPickupPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPickupPartnerModel = null,
  }) {
    return _then(_$AddPickupPartnerImpl(
      addPickupPartnerModel: null == addPickupPartnerModel
          ? _value.addPickupPartnerModel
          : addPickupPartnerModel // ignore: cast_nullable_to_non_nullable
              as AddPickupPartnerModel,
    ));
  }
}

/// @nodoc

class _$AddPickupPartnerImpl implements AddPickupPartner {
  const _$AddPickupPartnerImpl({required this.addPickupPartnerModel});

  @override
  final AddPickupPartnerModel addPickupPartnerModel;

  @override
  String toString() {
    return 'PickupPartnerEvent.addPickupPartner(addPickupPartnerModel: $addPickupPartnerModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPickupPartnerImpl &&
            (identical(other.addPickupPartnerModel, addPickupPartnerModel) ||
                other.addPickupPartnerModel == addPickupPartnerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addPickupPartnerModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPickupPartnerImplCopyWith<_$AddPickupPartnerImpl> get copyWith =>
      __$$AddPickupPartnerImplCopyWithImpl<_$AddPickupPartnerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
  }) {
    return addPickupPartner(addPickupPartnerModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
  }) {
    return addPickupPartner?.call(addPickupPartnerModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (addPickupPartner != null) {
      return addPickupPartner(addPickupPartnerModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
  }) {
    return addPickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
  }) {
    return addPickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (addPickupPartner != null) {
      return addPickupPartner(this);
    }
    return orElse();
  }
}

abstract class AddPickupPartner implements PickupPartnerEvent {
  const factory AddPickupPartner(
          {required final AddPickupPartnerModel addPickupPartnerModel}) =
      _$AddPickupPartnerImpl;

  AddPickupPartnerModel get addPickupPartnerModel;
  @JsonKey(ignore: true)
  _$$AddPickupPartnerImplCopyWith<_$AddPickupPartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPickupPartnersImplCopyWith<$Res> {
  factory _$$GetPickupPartnersImplCopyWith(_$GetPickupPartnersImpl value,
          $Res Function(_$GetPickupPartnersImpl) then) =
      __$$GetPickupPartnersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPickupPartnersImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res, _$GetPickupPartnersImpl>
    implements _$$GetPickupPartnersImplCopyWith<$Res> {
  __$$GetPickupPartnersImplCopyWithImpl(_$GetPickupPartnersImpl _value,
      $Res Function(_$GetPickupPartnersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPickupPartnersImpl implements GetPickupPartners {
  const _$GetPickupPartnersImpl();

  @override
  String toString() {
    return 'PickupPartnerEvent.getPickupPartners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPickupPartnersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
  }) {
    return getPickupPartners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
  }) {
    return getPickupPartners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (getPickupPartners != null) {
      return getPickupPartners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
  }) {
    return getPickupPartners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
  }) {
    return getPickupPartners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (getPickupPartners != null) {
      return getPickupPartners(this);
    }
    return orElse();
  }
}

abstract class GetPickupPartners implements PickupPartnerEvent {
  const factory GetPickupPartners() = _$GetPickupPartnersImpl;
}

/// @nodoc
abstract class _$$BlocPickupPartnersImplCopyWith<$Res> {
  factory _$$BlocPickupPartnersImplCopyWith(_$BlocPickupPartnersImpl value,
          $Res Function(_$BlocPickupPartnersImpl) then) =
      __$$BlocPickupPartnersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BlocPickupPartnersImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res, _$BlocPickupPartnersImpl>
    implements _$$BlocPickupPartnersImplCopyWith<$Res> {
  __$$BlocPickupPartnersImplCopyWithImpl(_$BlocPickupPartnersImpl _value,
      $Res Function(_$BlocPickupPartnersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BlocPickupPartnersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocPickupPartnersImpl implements BlocPickupPartners {
  const _$BlocPickupPartnersImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'PickupPartnerEvent.blocPickupPartners(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocPickupPartnersImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocPickupPartnersImplCopyWith<_$BlocPickupPartnersImpl> get copyWith =>
      __$$BlocPickupPartnersImplCopyWithImpl<_$BlocPickupPartnersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
  }) {
    return blocPickupPartners(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
  }) {
    return blocPickupPartners?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (blocPickupPartners != null) {
      return blocPickupPartners(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
  }) {
    return blocPickupPartners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
  }) {
    return blocPickupPartners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (blocPickupPartners != null) {
      return blocPickupPartners(this);
    }
    return orElse();
  }
}

abstract class BlocPickupPartners implements PickupPartnerEvent {
  const factory BlocPickupPartners({required final String id}) =
      _$BlocPickupPartnersImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$BlocPickupPartnersImplCopyWith<_$BlocPickupPartnersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnBlocPickupPartnersImplCopyWith<$Res> {
  factory _$$UnBlocPickupPartnersImplCopyWith(_$UnBlocPickupPartnersImpl value,
          $Res Function(_$UnBlocPickupPartnersImpl) then) =
      __$$UnBlocPickupPartnersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UnBlocPickupPartnersImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res, _$UnBlocPickupPartnersImpl>
    implements _$$UnBlocPickupPartnersImplCopyWith<$Res> {
  __$$UnBlocPickupPartnersImplCopyWithImpl(_$UnBlocPickupPartnersImpl _value,
      $Res Function(_$UnBlocPickupPartnersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UnBlocPickupPartnersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnBlocPickupPartnersImpl implements UnBlocPickupPartners {
  const _$UnBlocPickupPartnersImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'PickupPartnerEvent.unBlocPickupPartners(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnBlocPickupPartnersImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnBlocPickupPartnersImplCopyWith<_$UnBlocPickupPartnersImpl>
      get copyWith =>
          __$$UnBlocPickupPartnersImplCopyWithImpl<_$UnBlocPickupPartnersImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
  }) {
    return unBlocPickupPartners(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
  }) {
    return unBlocPickupPartners?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (unBlocPickupPartners != null) {
      return unBlocPickupPartners(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
  }) {
    return unBlocPickupPartners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
  }) {
    return unBlocPickupPartners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    required TResult orElse(),
  }) {
    if (unBlocPickupPartners != null) {
      return unBlocPickupPartners(this);
    }
    return orElse();
  }
}

abstract class UnBlocPickupPartners implements PickupPartnerEvent {
  const factory UnBlocPickupPartners({required final String id}) =
      _$UnBlocPickupPartnersImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$UnBlocPickupPartnersImplCopyWith<_$UnBlocPickupPartnersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PickupPartnerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get partnerAddingLoader => throw _privateConstructorUsedError;
  List<PickUpPerson>? get pickUpPersons => throw _privateConstructorUsedError;
  bool get pickupPersonAdded => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickupPartnerStateCopyWith<PickupPartnerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupPartnerStateCopyWith<$Res> {
  factory $PickupPartnerStateCopyWith(
          PickupPartnerState value, $Res Function(PickupPartnerState) then) =
      _$PickupPartnerStateCopyWithImpl<$Res, PickupPartnerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool partnerAddingLoader,
      List<PickUpPerson>? pickUpPersons,
      bool pickupPersonAdded,
      String? message});
}

/// @nodoc
class _$PickupPartnerStateCopyWithImpl<$Res, $Val extends PickupPartnerState>
    implements $PickupPartnerStateCopyWith<$Res> {
  _$PickupPartnerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? partnerAddingLoader = null,
    Object? pickUpPersons = freezed,
    Object? pickupPersonAdded = null,
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
      partnerAddingLoader: null == partnerAddingLoader
          ? _value.partnerAddingLoader
          : partnerAddingLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      pickUpPersons: freezed == pickUpPersons
          ? _value.pickUpPersons
          : pickUpPersons // ignore: cast_nullable_to_non_nullable
              as List<PickUpPerson>?,
      pickupPersonAdded: null == pickupPersonAdded
          ? _value.pickupPersonAdded
          : pickupPersonAdded // ignore: cast_nullable_to_non_nullable
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
    implements $PickupPartnerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool partnerAddingLoader,
      List<PickUpPerson>? pickUpPersons,
      bool pickupPersonAdded,
      String? message});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PickupPartnerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? partnerAddingLoader = null,
    Object? pickUpPersons = freezed,
    Object? pickupPersonAdded = null,
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
      partnerAddingLoader: null == partnerAddingLoader
          ? _value.partnerAddingLoader
          : partnerAddingLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      pickUpPersons: freezed == pickUpPersons
          ? _value._pickUpPersons
          : pickUpPersons // ignore: cast_nullable_to_non_nullable
              as List<PickUpPerson>?,
      pickupPersonAdded: null == pickupPersonAdded
          ? _value.pickupPersonAdded
          : pickupPersonAdded // ignore: cast_nullable_to_non_nullable
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
      required this.partnerAddingLoader,
      final List<PickUpPerson>? pickUpPersons,
      required this.pickupPersonAdded,
      this.message})
      : _pickUpPersons = pickUpPersons;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool partnerAddingLoader;
  final List<PickUpPerson>? _pickUpPersons;
  @override
  List<PickUpPerson>? get pickUpPersons {
    final value = _pickUpPersons;
    if (value == null) return null;
    if (_pickUpPersons is EqualUnmodifiableListView) return _pickUpPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool pickupPersonAdded;
  @override
  final String? message;

  @override
  String toString() {
    return 'PickupPartnerState(isLoading: $isLoading, hasError: $hasError, partnerAddingLoader: $partnerAddingLoader, pickUpPersons: $pickUpPersons, pickupPersonAdded: $pickupPersonAdded, message: $message)';
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
            (identical(other.partnerAddingLoader, partnerAddingLoader) ||
                other.partnerAddingLoader == partnerAddingLoader) &&
            const DeepCollectionEquality()
                .equals(other._pickUpPersons, _pickUpPersons) &&
            (identical(other.pickupPersonAdded, pickupPersonAdded) ||
                other.pickupPersonAdded == pickupPersonAdded) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      partnerAddingLoader,
      const DeepCollectionEquality().hash(_pickUpPersons),
      pickupPersonAdded,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements PickupPartnerState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool partnerAddingLoader,
      final List<PickUpPerson>? pickUpPersons,
      required final bool pickupPersonAdded,
      final String? message}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get partnerAddingLoader;
  @override
  List<PickUpPerson>? get pickUpPersons;
  @override
  bool get pickupPersonAdded;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
