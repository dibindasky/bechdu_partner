part of 'transcation_bloc.dart';

@freezed
class TranscationState with _$TranscationState {
  const factory TranscationState(
      {required bool hasError,
      required bool isLoading,
      required bool creditedLoading,
      required bool debitedLoading,
      List<Transcation>? creditedTranscations,
      List<Transcation>? debitedTranscations,
      String? message,
      required bool isCreditedTab}) = _Initial;

  factory TranscationState.initial() => const TranscationState(
      hasError: false,
      isLoading: false,
      isCreditedTab: true,
      creditedLoading: false,
      debitedLoading: false);
}
