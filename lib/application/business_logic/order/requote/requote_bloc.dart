import 'dart:async';

import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/section.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:bechdu_partner/domain/model/requote/reshedule_model/reshedule_model.dart';
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
    on<MarkYesOrNo>(markYesOrNo);
    on<MarkAnswer>(markAnswer);
    on<MarkGrid>(markGrid);
    on<GetDateAndTime>(getDateAndTime);
    on<ResheduleOrder>(resheduleOrder);
    on<GetPrice>(getPrice);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(RequoteState.initial());
  }

  FutureOr<void> getPrice(GetPrice event, emit) async {}

  FutureOr<void> resheduleOrder(ResheduleOrder event, emit) async {
    final phone = await SecureStorage.getPhone();
    emit(state.copyWith(
        resheduleLoading: true,
        resheduleDone: false,
        message: null,
        questionLoading: false));
    final result = await requoteService.resheduleOrder(
        resheduleModel: event.resheduleModel,
        orderId: event.orderId,
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            resheduleLoading: false, message: l.message, hasError: true)),
        (r) => emit(state.copyWith(
            resheduleLoading: false, message: r.message, resheduleDone: true)));
  }

  FutureOr<void> markGrid(MarkGrid event, emit) async {
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.requoteIndex].heading!]!;
    if (list.isEmpty) {
      list.add(event.selectedOption);
    } else {
      list.clear();
      list.add(event.selectedOption);
    }
    map[state.sections![state.requoteIndex].heading!] = list;
    print(map);
    if (list.isNotEmpty) {
      print(list.first.value);
    }
    return emit(state.copyWith(message: null, selectedAnswers: map));
  }

  FutureOr<void> markAnswer(MarkAnswer event, emit) async {
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.requoteIndex].heading!]!;
    int index = list.indexWhere(
        (element) => element.description == event.selectedOption.description);
    if (index == -1) {
      // not found
      list.add(event.selectedOption);
    } else {
      // remove existing value
      list.removeAt(index);
    }
    map[state.sections![state.requoteIndex].heading!] = list;
    print(map);
    if (list.isNotEmpty) {
      print(list.first.value);
    }
    return emit(state.copyWith(message: null, selectedAnswers: map));
  }

  FutureOr<void> markYesOrNo(MarkYesOrNo event, emit) async {
    print(event.selectedOption.toJson());
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.requoteIndex].heading!]!;
    int index = list.indexWhere(
        (element) => element.description == event.selectedOption.description);
    if (index == -1) {
      // not found
      list.add(event.selectedOption);
    } else if (list[index].value != event.selectedOption.value) {
      // replace yes with no or noi eith yes
      list[index] = event.selectedOption;
    } else {
      // remove existing value
      list.removeAt(index);
    }
    map[state.sections![state.requoteIndex].heading!] = list;
    print(map);
    if (list.isNotEmpty) {
      print(list.first.value);
    }
    return emit(state.copyWith(message: null, selectedAnswers: map));
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith(
        questionLoading: true, sections: null, message: null, hasError: false));
    final result = await requoteService.getQuestions(category: event.category);
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true, questionLoading: false, message: l.message)), (r) {
      Map<String, List<SelectedOption>> map = {};
      if (r.sections != null) {
        for (var element in r.sections!.toList()) {
          if (!map.containsKey(element.heading)) {
            map[element.heading!] = <SelectedOption>[];
          }
        }
      }
      return emit(state.copyWith(
          questionLoading: false, sections: r.sections, selectedAnswers: map));
    });
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

  FutureOr<void> getDateAndTime(GetDateAndTime event, emit) async {
    final result = await requoteService.getDateAndTime();
    result.fold(
        (l) => null,
        (r) =>
            emit(state.copyWith(dates: r.dates ?? [], time: r.timeSlot ?? [])));
  }
}
