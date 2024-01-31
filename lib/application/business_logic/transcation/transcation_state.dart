part of 'transcation_bloc.dart';

@freezed
class TranscationState with _$TranscationState {
  const factory TranscationState(
      {required bool hasError,
      required bool isLoading,
      String? message,
      required bool isCreditedTab}) = _Initial;

  factory TranscationState.initial() => const TranscationState(
      hasError: false, isLoading: false, isCreditedTab: true);
}
