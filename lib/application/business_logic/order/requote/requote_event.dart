part of 'requote_bloc.dart';

@freezed
class RequoteEvent with _$RequoteEvent {
  const factory RequoteEvent.getQuestions({required String category}) =
      GetQuestions;
  const factory RequoteEvent.changeIndex({required int index}) = ChangeIndex;
  const factory RequoteEvent.goBackIndex({required int index}) = GoBackIndex;
  const factory RequoteEvent.markAnswer(
      {required Map<String, dynamic> answer}) = MarkAnswer;
}
