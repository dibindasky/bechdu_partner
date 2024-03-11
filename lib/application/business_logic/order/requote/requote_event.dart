part of 'requote_bloc.dart';

@freezed
class RequoteEvent with _$RequoteEvent {
  const factory RequoteEvent.getQuestions({required String category}) =
      GetQuestions;
  const factory RequoteEvent.changeIndex() = _ChangeIndex;
  const factory RequoteEvent.markAnswer(
      {required Map<String, dynamic> answer}) = _MarkAnswer;
}
