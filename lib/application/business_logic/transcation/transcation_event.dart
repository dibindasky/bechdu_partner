part of 'transcation_bloc.dart';

@freezed
class TranscationEvent with _$TranscationEvent {
  const factory TranscationEvent.changeTab() = ChangeTab;
  const factory TranscationEvent.getCreditedTranscations() =
      GetCreditedTranscations;
  const factory TranscationEvent.getDebitedTranscations() =
      GetDebitedTranscations;
  const factory TranscationEvent.getCreditedTranscationsNextPage() =
      GetCreditedTranscationsNextPage;
  const factory TranscationEvent.getDebitedTranscationsNextPage() =
      GetDebitedTranscationsNextPage;
  const factory TranscationEvent.reset() = Reset;
}
