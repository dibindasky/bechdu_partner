part of 'requote_bloc.dart';

@freezed
class RequoteState with _$RequoteState {
  const factory RequoteState({
    required bool isLoading,
    required bool hasError,
    String? message,
    required List<String> dates,
    required List<String> time,
    required bool questionLoading,
    required bool resheduleLoading,
    required bool resheduleDone,
    required int requoteIndex,
    List<Section>? sections,
    required Map<String, List<SelectedOption>> selectedAnswers,
  }) = _Initial;

  factory RequoteState.initial() => const RequoteState(
      isLoading: false,
      hasError: false,
      requoteIndex: 0,
      resheduleDone: false,
      resheduleLoading: false,
      questionLoading: false,
      selectedAnswers: {},
      dates: [],
      time: []);
}
