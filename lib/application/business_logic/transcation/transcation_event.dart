part of 'transcation_bloc.dart';

@freezed
class TranscationEvent with _$TranscationEvent {
  const factory TranscationEvent.changeTab() = _ChangeTab;
}
