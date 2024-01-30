import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController otpController=TextEditingController();
  AuthBloc() : super(_Initial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
