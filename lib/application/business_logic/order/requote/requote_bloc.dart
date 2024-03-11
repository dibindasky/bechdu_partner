import 'dart:async';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/section.dart';
import 'package:bechdu_partner/domain/repository/service/requote_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'requote_event.dart';
part 'requote_state.dart';
part 'requote_bloc.freezed.dart';

@injectable
class RequoteBloc extends Bloc<RequoteEvent, RequoteState> {
  final RequoteRepo requoteService;

  RequoteBloc(this.requoteService) : super(RequoteState.initial()) {
    on<GetQuestions>(getQuestions);
    on<ChangeIndex>(changeIndex);
    on<GoBackIndex>(goBackIndex);
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith(
        questionLoading: true, sections: null, message: null, hasError: false));
    final result = await requoteService.getQuestions(category: event.category);
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true, questionLoading: false, message: l.message)),
        (r) =>
            emit(state.copyWith(questionLoading: false, sections: r.sections)));
  }

  FutureOr<void> changeIndex(ChangeIndex event, emit) async {
    emit(state.copyWith(
        message: null, hasError: false, requoteIndex: event.index));
  }

  FutureOr<void> goBackIndex(GoBackIndex event, emit) async {
    if (event.index > state.requoteIndex || event.index == state.requoteIndex) {
      return;
    }
    if (event.index + 1 == state.requoteIndex) {
      emit(state.copyWith(
          message: null, hasError: false, requoteIndex: event.index));
    } else {
      emit(
          state.copyWith(message: 'you can go back to the previous step only'));
    }
  }
}
