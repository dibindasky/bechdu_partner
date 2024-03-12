import 'dart:async';
import 'package:bechdu_partner/domain/repository/service/points_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'points_event.dart';
part 'points_state.dart';
part 'points_bloc.freezed.dart';

@injectable
class PointsBloc extends Bloc<PointsEvent, PointsState> {
  final PointsRepo pointsRepo;
  PointsBloc(this.pointsRepo) : super(PointsState.initial()) {
    on<GetGst>(getGstRate);
  }

  FutureOr<void> getGstRate(GetGst event, emit) async {
    final result = await pointsRepo.getGstRate();
    result.fold((l) => null, (r) => emit(state.copyWith(gst: r.gst)));
  }
}
