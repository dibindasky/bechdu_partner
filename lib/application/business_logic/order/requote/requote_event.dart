part of 'requote_bloc.dart';

@freezed
class RequoteEvent with _$RequoteEvent {
  const factory RequoteEvent.getQuestions({required String category,required String slug}) =
      GetQuestions;
  const factory RequoteEvent.getDateAndTime() = GetDateAndTime;
  const factory RequoteEvent.resheduleOrder(
      {required ResheduleModel resheduleModel,
      required String orderId}) = ResheduleOrder;
  const factory RequoteEvent.changeIndex({required int index}) = ChangeIndex;
  const factory RequoteEvent.goBackIndex({required int index}) = GoBackIndex;
  const factory RequoteEvent.markYesOrNo(
      {required SelectedOption selectedOption}) = MarkYesOrNo;
  const factory RequoteEvent.markAnswer(
      {required SelectedOption selectedOption}) = MarkAnswer;
  const factory RequoteEvent.getPrice() = GetPrice;
  const factory RequoteEvent.reset() = Reset;
}
