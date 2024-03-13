import 'dart:async';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/get_credited_transcations_response_model/transcation.dart';
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transcation_event.dart';
part 'transcation_state.dart';
part 'transcation_bloc.freezed.dart';

@injectable
class TranscationBloc extends Bloc<TranscationEvent, TranscationState> {
  final TranscationsRepo transcationsRepo;
  int creditedPage = 1;
  int debitedPage = 1;
  int pageCount = 10;
  TranscationBloc(this.transcationsRepo) : super(TranscationState.initial()) {
    on<ChangeTab>(changeTab);
    on<GetCreditedTranscations>(getCreditedTranscations);
    on<GetDebitedTranscations>(getDebitedTranscations);
    on<GetCreditedTranscationsNextPage>(getCreditedTranscationsNextPage);
    on<GetDebitedTranscationsNextPage>(getDebitedTranscationsNextPage);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(TranscationState.initial());
  }

  FutureOr<void> changeTab(ChangeTab event, emit) {
    emit(state.copyWith(isCreditedTab: !state.isCreditedTab));
  }

  FutureOr<void> getCreditedTranscations(
      GetCreditedTranscations event, emit) async {
    emit(state.copyWith(isLoading: true, message: null, hasError: false));
    final phone = await SecureStorage.getPhone();
    creditedPage = 1;
    final result = await transcationsRepo.getCreditedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: creditedPage, pageSize: pageCount),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(isLoading: false, hasError: true)),
        (r) => emit(
            state.copyWith(isLoading: false, creditedTranscations: r.data)));
  }

  FutureOr<void> getCreditedTranscationsNextPage(
      GetCreditedTranscationsNextPage event, emit) async {
    emit(state.copyWith(creditedLoading: true, message: null, hasError: false));
    final phone = await SecureStorage.getPhone();
    final result = await transcationsRepo.getCreditedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: ++creditedPage, pageSize: pageCount),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(creditedLoading: false, hasError: true)),
        (r) => emit(state.copyWith(
                creditedLoading: false,
                creditedTranscations: [
                  ...state.creditedTranscations!,
                  ...r.data ?? []
                ])));
  }

  FutureOr<void> getDebitedTranscations(
      GetDebitedTranscations event, emit) async {
    emit(state.copyWith(isLoading: true, message: null, hasError: false));
    final phone = await SecureStorage.getPhone();
    debitedPage = 1;
    final result = await transcationsRepo.getDebitedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: debitedPage, pageSize: pageCount),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(isLoading: false, hasError: true)),
        (r) => emit(
            state.copyWith(isLoading: false, debitedTranscations: r.data)));
  }

  FutureOr<void> getDebitedTranscationsNextPage(
      GetDebitedTranscationsNextPage event, emit) async {
    emit(state.copyWith(debitedLoading: true, message: null, hasError: false));
    final phone = await SecureStorage.getPhone();
    final result = await transcationsRepo.getDebitedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: ++debitedPage, pageSize: pageCount),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(debitedLoading: false, hasError: true)),
        (r) => emit(state.copyWith(debitedLoading: false, debitedTranscations: [
              ...state.debitedTranscations!,
              ...r.data ?? []
            ])));
  }
}
