import 'dart:async';
import 'package:bechdu_partner/data/feature/pdf_buffer.dart';
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
  final InvoiceMaker invoiceMaker;
  int creditedPage = 1;
  int debitedPage = 1;
  int pageCount = 10;
  int pageCount2 = 5;
  TranscationBloc(this.transcationsRepo, this.invoiceMaker)
      : super(TranscationState.initial()) {
    on<ChangeTab>(changeTab);
    on<GetCreditedTranscations>(getCreditedTranscations);
    on<GetDebitedTranscations>(getDebitedTranscations);
    on<GetCreditedTranscationsNextPage>(getCreditedTranscationsNextPage);
    on<GetDebitedTranscationsNextPage>(getDebitedTranscationsNextPage);
    on<DownloadInvoice>(downloadInvoice);
    on<MakePdf>(makePdf);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(TranscationState.initial());
  }

  FutureOr<void> changeTab(ChangeTab event, emit) {
    emit(state.copyWith(
        isCreditedTab: !state.isCreditedTab,
        downloaded: false,
        hasError: false,
        message: null));
  }

  FutureOr<void> makePdf(MakePdf event, emit) async {
    // try {
    //   final file = await invoiceMaker.bufferSaver(event.buffer);
    //   print("invoice ========2");
    //   emit(state.copyWith(downloading: false, downloaded: true, invoice: file));
    //   print("invoice ========2.1");
    // } catch (e) {
    //   print("invoice ========3");
    //   emit(state.copyWith(
    //       downloading: false,
    //       hasError: true,
    //       message: 'Error while generating invoice'));
    // }
  }

  FutureOr<void> downloadInvoice(DownloadInvoice event, emit) async {
    emit(state.copyWith(
        message: null, hasError: false, downloading: true, downloaded: false));
    final phone = await SharedPref.getPhone();
    pageCount = 5;
    final result =
        await transcationsRepo.downloadInvoice(id: event.id, phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true,
            downloading: false,
            message: 'Error while generating invoice')), (r) {
      print("invoice ========1");
      // add(TranscationEvent.makePdf(buffer: r.base64String!));
      emit(state.copyWith(
          downloading: false, downloaded: true, invoice: r.base64String));
    });
  }

  FutureOr<void> getCreditedTranscations(
      GetCreditedTranscations event, emit) async {
    emit(state.copyWith(
        isLoading: true, message: null, hasError: false, downloaded: false));
    final phone = await SharedPref.getPhone();
    pageCount = 5;
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
    emit(state.copyWith(
        creditedLoading: true,
        message: null,
        hasError: false,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.getCreditedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: creditedPage, pageSize: pageCount += 5),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(creditedLoading: false, hasError: true)),
        (r) => emit(state.copyWith(
            creditedLoading: false, creditedTranscations: r.data)));
  }

  FutureOr<void> getDebitedTranscations(
      GetDebitedTranscations event, emit) async {
    emit(state.copyWith(
        isLoading: true, message: null, hasError: false, downloaded: false));
    final phone = await SharedPref.getPhone();
    pageCount2 = 5;
    final result = await transcationsRepo.getDebitedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: debitedPage, pageSize: pageCount2),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(isLoading: false, hasError: true)),
        (r) => emit(
            state.copyWith(isLoading: false, debitedTranscations: r.data)));
  }

  FutureOr<void> getDebitedTranscationsNextPage(
      GetDebitedTranscationsNextPage event, emit) async {
    emit(state.copyWith(
        debitedLoading: true,
        message: null,
        hasError: false,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.getDebitedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: debitedPage, pageSize: pageCount2 += 5),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(debitedLoading: false, hasError: true)),
        (r) => emit(state.copyWith(
            debitedLoading: false, debitedTranscations: r.data)));
  }
}
