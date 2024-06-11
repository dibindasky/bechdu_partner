import 'dart:async';

import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/section.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/price_calculation_model.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:bechdu_partner/domain/model/requote/requote_price_model/requote_price_model.dart';
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

  String finalPrice = '';

  RequoteBloc(this.requoteService) : super(RequoteState.initial()) {
    on<GetQuestions>(getQuestions);
    on<ChangeIndex>(changeIndex);
    on<GoBackIndex>(goBackIndex);
    on<MarkYesOrNo>(markYesOrNo);
    on<MarkAnswer>(markImageGrid);
    on<GetDateAndTime>(getDateAndTime);
    on<ResheduleOrder>(resheduleOrder);
    on<GetPrice>(getPrice);
    on<RequotePrice>(requotePrice);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(RequoteState.initial());
  }

  FutureOr<void> getPrice(GetPrice event, emit) async {
    emit(state.copyWith(
        hasError: false,
        resheduleDone: false,
        requoteDone: false,
        requoteError: false,
        requoteLoading: false,
        basePrice: null,
        priceCalculationError: false,
        priceCalculationLoading: true,
        message: null,
        questionLoading: false));
    finalPrice = '';
    List<SelectedOption> list = [];
    for (var element in state.sections!) {
      list.addAll(state.selectedAnswers[element.heading]!);
    }
    final result = await requoteService.getPrice(
        priceCalculationModel: PriceCalculationModel(
            selectedOptions: list,
            categoryType: state.category!,
            productSlug: state.slug!));
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message,
            hasError: true,
            priceCalculationError: true,
            priceCalculationLoading: false)), (r) {
      finalPrice = r.basePrice.toString();
      return emit(state.copyWith(
          basePrice: r.basePrice.toString(), priceCalculationLoading: false));
    });
  }

  FutureOr<void> requotePrice(RequotePrice event, emit) async {
    final phone = await SharedPref.getPhone();
    emit(state.copyWith(
        resheduleLoading: false,
        requoteDone: false,
        requoteError: false,
        requoteLoading: true,
        priceCalculationError: false,
        priceCalculationLoading: false,
        hasError: false,
        resheduleDone: false,
        message: null,
        questionLoading: false));
    final result = await requoteService.requoteOrder(
        requotePriceModel: event.requotePriceModel,
        orderId: event.orderId,
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message,
            hasError: true,
            requoteLoading: false,
            requoteError: true)),
        (r) => emit(state.copyWith(
            message: r.message, requoteDone: true, requoteLoading: false)));
  }

  FutureOr<void> resheduleOrder(ResheduleOrder event, emit) async {
    final phone = await SharedPref.getPhone();
    emit(state.copyWith(
        resheduleLoading: true,
        basePrice: null,
        priceCalculationError: false,
        priceCalculationLoading: false,
        requoteDone: false,
        requoteError: false,
        requoteLoading: false,
        hasError: false,
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

  FutureOr<void> markImageGrid(MarkAnswer event, emit) async {
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.requoteIndex].heading!]!;
    int index = list.indexWhere(
        (element) => element.description == event.selectedOption.description);
    if (state.sections![state.requoteIndex].criteria != 'one') {
      if (index == -1) {
        // not found
        list.add(event.selectedOption);
      } else {
        // remove existing value
        list.removeAt(index);
      }
    } else {
      if (index == -1) {
        list.clear();
        list.add(event.selectedOption);
      } else {
        list.clear();
      }
    }
    map[state.sections![state.requoteIndex].heading!] = list;
    return emit(state.copyWith(
        message: null,
        selectedAnswers: map,
        hasError: false,
        basePrice: null,
        priceCalculationError: false,
        priceCalculationLoading: false,
        requoteDone: false,
        requoteError: false,
        requoteLoading: false));
  }

  FutureOr<void> markYesOrNo(MarkYesOrNo event, emit) async {
    var map = Map<String, List<SelectedOption>>.from(state.selectedAnswers);
    List<SelectedOption> list =
        map[state.sections![state.requoteIndex].heading!]!;
    int index = list.indexWhere(
        (element) => element.description == event.selectedOption.description);
    if (state.sections![state.requoteIndex].criteria != 'one') {
      if (index == -1) {
        // not found
        list.add(event.selectedOption);
      } else if (list[index].value != event.selectedOption.value) {
        // replace yes with no or no with yes
        list[index] = event.selectedOption;
      } else {
        // remove existing value
        list.removeAt(index);
      }
    } else {
      if (index == -1 ||
          (list[index].value != event.selectedOption.value &&
              list[index].description == event.selectedOption.description)) {
        list.clear();
        list.add(event.selectedOption);
      } else {
        list.clear();
      }
    }
    map[state.sections![state.requoteIndex].heading!] = list;
    return emit(state.copyWith(
        message: null,
        selectedAnswers: map,
        hasError: false,
        basePrice: null,
        priceCalculationError: false,
        priceCalculationLoading: false,
        requoteDone: false,
        requoteError: false,
        requoteLoading: false));
  }

  FutureOr<void> getQuestions(GetQuestions event, emit) async {
    emit(state.copyWith(
        slug: event.slug,
        requoteDone: false,
        requoteError: false,
        requoteLoading: false,
        basePrice: null,
        priceCalculationError: false,
        priceCalculationLoading: false,
        questionLoading: true,
        sections: null,
        message: null,
        hasError: false));
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
          questionLoading: false,
          sections: r.sections,
          category: r.categoryType,
          selectedAnswers: map,
          hasError: false));
    });
  }

  FutureOr<void> changeIndex(ChangeIndex event, emit) async {
    if (state.sections![state.requoteIndex].criteria == 'all' &&
        state.selectedAnswers[state.sections![state.requoteIndex].heading]!
                .length !=
            state.sections![state.requoteIndex].options!.length) {
      emit(state.copyWith(
          basePrice: null,
          priceCalculationError: false,
          priceCalculationLoading: false,
          requoteDone: false,
          requoteError: false,
          requoteLoading: false,
          message: 'must choose all options',
          hasError: true));
    } else if (state.sections![state.requoteIndex].criteria == 'one' &&
        state.selectedAnswers[state.sections![state.requoteIndex].heading]!
                .length !=
            1) {
      emit(state.copyWith(
          basePrice: null,
          requoteDone: false,
          requoteError: false,
          requoteLoading: false,
          message: 'must choose one option',
          hasError: true));
    } else if (state.sections![state.requoteIndex].criteria == 'some' &&
        state.selectedAnswers[state.sections![state.requoteIndex].heading]!
            .isEmpty) {
      emit(state.copyWith(
          priceCalculationError: false,
          requoteDone: false,
          requoteError: false,
          requoteLoading: false,
          message: 'select atleast one option',
          hasError: true));
    } else if (state.requoteIndex != state.sections!.length - 1) {
      emit(state.copyWith(
          priceCalculationLoading: false,
          message: null,
          hasError: false,
          requoteDone: false,
          requoteError: false,
          requoteLoading: false,
          requoteIndex: event.index));
    }
    // if last index and validated then call for price
    else if (state.requoteIndex == state.sections!.length - 1) {
      add(const RequoteEvent.getPrice());
    }
  }

  FutureOr<void> goBackIndex(GoBackIndex event, emit) async {
    if (event.index > state.requoteIndex || event.index == state.requoteIndex) {
      return;
    }
    if (event.index + 1 == state.requoteIndex) {
      emit(state.copyWith(
          requoteDone: false,
          requoteError: false,
          basePrice: null,
          priceCalculationError: false,
          priceCalculationLoading: false,
          requoteLoading: false,
          message: null,
          hasError: false,
          requoteIndex: event.index));
    } else {
      emit(state.copyWith(
          requoteDone: false,
          requoteError: false,
          basePrice: null,
          priceCalculationError: false,
          priceCalculationLoading: false,
          requoteLoading: false,
          message: 'you can go back to the previous step only',
          hasError: true));
    }
  }

  FutureOr<void> getDateAndTime(GetDateAndTime event, emit) async {
    final result = await requoteService.getDateAndTime();
    result.fold(
        (l) => null,
        (r) => emit(state.copyWith(
            basePrice: null,
            priceCalculationError: false,
            priceCalculationLoading: false,
            requoteDone: false,
            requoteError: false,
            requoteLoading: false,
            dates: r.dates ?? [],
            time: r.timeSlot ?? [],
            hasError: false)));
  }
}
