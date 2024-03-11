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
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
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
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
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
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
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
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
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
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
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
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
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
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
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
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
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
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
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
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
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
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
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
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
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
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
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
abstract class _$$GetPartnerProfileImplCopyWith<$Res> {
  factory _$$GetPartnerProfileImplCopyWith(_$GetPartnerProfileImpl value,
          $Res Function(_$GetPartnerProfileImpl) then) =
      __$$GetPartnerProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPartnerProfileImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res, _$GetPartnerProfileImpl>
    implements _$$GetPartnerProfileImplCopyWith<$Res> {
  __$$GetPartnerProfileImplCopyWithImpl(_$GetPartnerProfileImpl _value,
      $Res Function(_$GetPartnerProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPartnerProfileImpl implements GetPartnerProfile {
  const _$GetPartnerProfileImpl();

  @override
  String toString() {
    return 'PickupPartnerEvent.getPartnerProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPartnerProfileImpl);
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
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
  }) {
    return getPartnerProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
  }) {
    return getPartnerProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) {
    if (getPartnerProfile != null) {
      return getPartnerProfile();
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
  }) {
    return getPartnerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
  }) {
    return getPartnerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) {
    if (getPartnerProfile != null) {
      return getPartnerProfile(this);
    }
    return orElse();
  }
}

abstract class GetPartnerProfile implements PickupPartnerEvent {
  const factory GetPartnerProfile() = _$GetPartnerProfileImpl;
}

/// @nodoc
abstract class _$$AssignOrderToPickupPartnerImplCopyWith<$Res> {
  factory _$$AssignOrderToPickupPartnerImplCopyWith(
          _$AssignOrderToPickupPartnerImpl value,
          $Res Function(_$AssignOrderToPickupPartnerImpl) then) =
      __$$AssignOrderToPickupPartnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partnerId, String orderId});
}

/// @nodoc
class __$$AssignOrderToPickupPartnerImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res,
        _$AssignOrderToPickupPartnerImpl>
    implements _$$AssignOrderToPickupPartnerImplCopyWith<$Res> {
  __$$AssignOrderToPickupPartnerImplCopyWithImpl(
      _$AssignOrderToPickupPartnerImpl _value,
      $Res Function(_$AssignOrderToPickupPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerId = null,
    Object? orderId = null,
  }) {
    return _then(_$AssignOrderToPickupPartnerImpl(
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssignOrderToPickupPartnerImpl implements AssignOrderToPickupPartner {
  const _$AssignOrderToPickupPartnerImpl(
      {required this.partnerId, required this.orderId});

  @override
  final String partnerId;
  @override
  final String orderId;

  @override
  String toString() {
    return 'PickupPartnerEvent.assignOrderToPickupPartner(partnerId: $partnerId, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignOrderToPickupPartnerImpl &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partnerId, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignOrderToPickupPartnerImplCopyWith<_$AssignOrderToPickupPartnerImpl>
      get copyWith => __$$AssignOrderToPickupPartnerImplCopyWithImpl<
          _$AssignOrderToPickupPartnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
  }) {
    return assignOrderToPickupPartner(partnerId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
  }) {
    return assignOrderToPickupPartner?.call(partnerId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) {
    if (assignOrderToPickupPartner != null) {
      return assignOrderToPickupPartner(partnerId, orderId);
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
  }) {
    return assignOrderToPickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
  }) {
    return assignOrderToPickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) {
    if (assignOrderToPickupPartner != null) {
      return assignOrderToPickupPartner(this);
    }
    return orElse();
  }
}

abstract class AssignOrderToPickupPartner implements PickupPartnerEvent {
  const factory AssignOrderToPickupPartner(
      {required final String partnerId,
      required final String orderId}) = _$AssignOrderToPickupPartnerImpl;

  String get partnerId;
  String get orderId;
  @JsonKey(ignore: true)
  _$$AssignOrderToPickupPartnerImplCopyWith<_$AssignOrderToPickupPartnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeAssignOrderFromPickupPartnerImplCopyWith<$Res> {
  factory _$$DeAssignOrderFromPickupPartnerImplCopyWith(
          _$DeAssignOrderFromPickupPartnerImpl value,
          $Res Function(_$DeAssignOrderFromPickupPartnerImpl) then) =
      __$$DeAssignOrderFromPickupPartnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$DeAssignOrderFromPickupPartnerImplCopyWithImpl<$Res>
    extends _$PickupPartnerEventCopyWithImpl<$Res,
        _$DeAssignOrderFromPickupPartnerImpl>
    implements _$$DeAssignOrderFromPickupPartnerImplCopyWith<$Res> {
  __$$DeAssignOrderFromPickupPartnerImplCopyWithImpl(
      _$DeAssignOrderFromPickupPartnerImpl _value,
      $Res Function(_$DeAssignOrderFromPickupPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$DeAssignOrderFromPickupPartnerImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeAssignOrderFromPickupPartnerImpl
    implements DeAssignOrderFromPickupPartner {
  const _$DeAssignOrderFromPickupPartnerImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'PickupPartnerEvent.deAssignOrderFromPickupPartner(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeAssignOrderFromPickupPartnerImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeAssignOrderFromPickupPartnerImplCopyWith<
          _$DeAssignOrderFromPickupPartnerImpl>
      get copyWith => __$$DeAssignOrderFromPickupPartnerImplCopyWithImpl<
          _$DeAssignOrderFromPickupPartnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
  }) {
    return deAssignOrderFromPickupPartner(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
  }) {
    return deAssignOrderFromPickupPartner?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) {
    if (deAssignOrderFromPickupPartner != null) {
      return deAssignOrderFromPickupPartner(orderId);
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
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
  }) {
    return deAssignOrderFromPickupPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
  }) {
    return deAssignOrderFromPickupPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
    required TResult orElse(),
  }) {
    if (deAssignOrderFromPickupPartner != null) {
      return deAssignOrderFromPickupPartner(this);
    }
    return orElse();
  }
}

abstract class DeAssignOrderFromPickupPartner implements PickupPartnerEvent {
  const factory DeAssignOrderFromPickupPartner(
      {required final String orderId}) = _$DeAssignOrderFromPickupPartnerImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$DeAssignOrderFromPickupPartnerImplCopyWith<
          _$DeAssignOrderFromPickupPartnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PickupPartnerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get partnerAddingLoader => throw _privateConstructorUsedError;
  bool get pickupPersonAdded => throw _privateConstructorUsedError;
  bool get assigningOrderLoader => throw _privateConstructorUsedError;
  bool get orderAssigned => throw _privateConstructorUsedError;
  bool get orderDeAssigned => throw _privateConstructorUsedError;
  PickUpPerson? get selectedPickup => throw _privateConstructorUsedError;
  List<PickUpPerson>? get pickUpPersons => throw _privateConstructorUsedError;
  PartnerProfile? get partnerProfile => throw _privateConstructorUsedError;
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
      bool pickupPersonAdded,
      bool assigningOrderLoader,
      bool orderAssigned,
      bool orderDeAssigned,
      PickUpPerson? selectedPickup,
      List<PickUpPerson>? pickUpPersons,
      PartnerProfile? partnerProfile,
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
    Object? pickupPersonAdded = null,
    Object? assigningOrderLoader = null,
    Object? orderAssigned = null,
    Object? orderDeAssigned = null,
    Object? selectedPickup = freezed,
    Object? pickUpPersons = freezed,
    Object? partnerProfile = freezed,
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
      pickupPersonAdded: null == pickupPersonAdded
          ? _value.pickupPersonAdded
          : pickupPersonAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      assigningOrderLoader: null == assigningOrderLoader
          ? _value.assigningOrderLoader
          : assigningOrderLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAssigned: null == orderAssigned
          ? _value.orderAssigned
          : orderAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDeAssigned: null == orderDeAssigned
          ? _value.orderDeAssigned
          : orderDeAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPickup: freezed == selectedPickup
          ? _value.selectedPickup
          : selectedPickup // ignore: cast_nullable_to_non_nullable
              as PickUpPerson?,
      pickUpPersons: freezed == pickUpPersons
          ? _value.pickUpPersons
          : pickUpPersons // ignore: cast_nullable_to_non_nullable
              as List<PickUpPerson>?,
      partnerProfile: freezed == partnerProfile
          ? _value.partnerProfile
          : partnerProfile // ignore: cast_nullable_to_non_nullable
              as PartnerProfile?,
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
      bool pickupPersonAdded,
      bool assigningOrderLoader,
      bool orderAssigned,
      bool orderDeAssigned,
      PickUpPerson? selectedPickup,
      List<PickUpPerson>? pickUpPersons,
      PartnerProfile? partnerProfile,
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
    Object? pickupPersonAdded = null,
    Object? assigningOrderLoader = null,
    Object? orderAssigned = null,
    Object? orderDeAssigned = null,
    Object? selectedPickup = freezed,
    Object? pickUpPersons = freezed,
    Object? partnerProfile = freezed,
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
      pickupPersonAdded: null == pickupPersonAdded
          ? _value.pickupPersonAdded
          : pickupPersonAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      assigningOrderLoader: null == assigningOrderLoader
          ? _value.assigningOrderLoader
          : assigningOrderLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAssigned: null == orderAssigned
          ? _value.orderAssigned
          : orderAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDeAssigned: null == orderDeAssigned
          ? _value.orderDeAssigned
          : orderDeAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPickup: freezed == selectedPickup
          ? _value.selectedPickup
          : selectedPickup // ignore: cast_nullable_to_non_nullable
              as PickUpPerson?,
      pickUpPersons: freezed == pickUpPersons
          ? _value._pickUpPersons
          : pickUpPersons // ignore: cast_nullable_to_non_nullable
              as List<PickUpPerson>?,
      partnerProfile: freezed == partnerProfile
          ? _value.partnerProfile
          : partnerProfile // ignore: cast_nullable_to_non_nullable
              as PartnerProfile?,
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
      required this.pickupPersonAdded,
      required this.assigningOrderLoader,
      required this.orderAssigned,
      required this.orderDeAssigned,
      this.selectedPickup,
      final List<PickUpPerson>? pickUpPersons,
      this.partnerProfile,
      this.message})
      : _pickUpPersons = pickUpPersons;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool partnerAddingLoader;
  @override
  final bool pickupPersonAdded;
  @override
  final bool assigningOrderLoader;
  @override
  final bool orderAssigned;
  @override
  final bool orderDeAssigned;
  @override
  final PickUpPerson? selectedPickup;
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
  final PartnerProfile? partnerProfile;
  @override
  final String? message;

  @override
  String toString() {
    return 'PickupPartnerState(isLoading: $isLoading, hasError: $hasError, partnerAddingLoader: $partnerAddingLoader, pickupPersonAdded: $pickupPersonAdded, assigningOrderLoader: $assigningOrderLoader, orderAssigned: $orderAssigned, orderDeAssigned: $orderDeAssigned, selectedPickup: $selectedPickup, pickUpPersons: $pickUpPersons, partnerProfile: $partnerProfile, message: $message)';
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
            (identical(other.pickupPersonAdded, pickupPersonAdded) ||
                other.pickupPersonAdded == pickupPersonAdded) &&
            (identical(other.assigningOrderLoader, assigningOrderLoader) ||
                other.assigningOrderLoader == assigningOrderLoader) &&
            (identical(other.orderAssigned, orderAssigned) ||
                other.orderAssigned == orderAssigned) &&
            (identical(other.orderDeAssigned, orderDeAssigned) ||
                other.orderDeAssigned == orderDeAssigned) &&
            (identical(other.selectedPickup, selectedPickup) ||
                other.selectedPickup == selectedPickup) &&
            const DeepCollectionEquality()
                .equals(other._pickUpPersons, _pickUpPersons) &&
            (identical(other.partnerProfile, partnerProfile) ||
                other.partnerProfile == partnerProfile) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      partnerAddingLoader,
      pickupPersonAdded,
      assigningOrderLoader,
      orderAssigned,
      orderDeAssigned,
      selectedPickup,
      const DeepCollectionEquality().hash(_pickUpPersons),
      partnerProfile,
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
      required final bool pickupPersonAdded,
      required final bool assigningOrderLoader,
      required final bool orderAssigned,
      required final bool orderDeAssigned,
      final PickUpPerson? selectedPickup,
      final List<PickUpPerson>? pickUpPersons,
      final PartnerProfile? partnerProfile,
      final String? message}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get partnerAddingLoader;
  @override
  bool get pickupPersonAdded;
  @override
  bool get assigningOrderLoader;
  @override
  bool get orderAssigned;
  @override
  bool get orderDeAssigned;
  @override
  PickUpPerson? get selectedPickup;
  @override
  List<PickUpPerson>? get pickUpPersons;
  @override
  PartnerProfile? get partnerProfile;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
