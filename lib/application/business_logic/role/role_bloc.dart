import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'role_event.dart';
part 'role_state.dart';
part 'role_bloc.freezed.dart';

@injectable
class RoleBloc extends Bloc<RoleEvent, RoleState> {
  RoleBloc() : super(const RoleState.initial(partner: false)) {
    on<GetRole>((event, emit) async {
      final role = await SharedPref.getRole();
      emit(state.copyWith(partner: role));
    });
  }
}
