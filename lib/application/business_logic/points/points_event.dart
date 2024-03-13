part of 'points_bloc.dart';

@freezed
class PointsEvent with _$PointsEvent {
  const factory PointsEvent.getGst() = GetGst;
  const factory PointsEvent.getCoinValue() = GetCoinValue;
  const factory PointsEvent.reset() = Reset;
}
