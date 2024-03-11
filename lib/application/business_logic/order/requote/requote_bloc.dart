import 'dart:async';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'requote_event.dart';
part 'requote_state.dart';
part 'requote_bloc.freezed.dart';

@injectable
class RequoteBloc extends Bloc<RequoteEvent, RequoteState> {
  RequoteBloc() : super(RequoteState.initial()) {
    on<GetQuestions>(getQuestions);
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith());
  }
}
