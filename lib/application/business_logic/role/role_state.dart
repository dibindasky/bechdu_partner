part of 'role_bloc.dart';

@freezed
class RoleState with _$RoleState {
  const factory RoleState.initial({required bool partner}) = _Initial;
}
