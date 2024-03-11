part of 'requote_bloc.dart';

@freezed
class RequoteState with _$RequoteState {
  const factory RequoteState({
    required bool isLoading,
    required bool hasError,
    String? message,
    required bool questionLoading,
    required int requoteIndex,
    List<Section>? sections,
    required List<Map<String, dynamic>> map,
    required List<Map<String, dynamic>> markedanswer,
  }) = _Initial;

  factory RequoteState.initial() => RequoteState(
      isLoading: false,
      hasError: false,
      map: testQuestionMap,
      requoteIndex: 0,
      questionLoading: false,
      markedanswer: []);
}
