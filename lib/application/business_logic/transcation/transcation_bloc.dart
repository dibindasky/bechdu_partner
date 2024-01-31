import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transcation_event.dart';
part 'transcation_state.dart';
part 'transcation_bloc.freezed.dart';

@injectable
class TranscationBloc extends Bloc<TranscationEvent, TranscationState> {
  TranscationBloc() : super(TranscationState.initial()) {
    on<_ChangeTab>((event, emit) {
      emit(state.copyWith(isCreditedTab: !state.isCreditedTab));
    });
  }
}
