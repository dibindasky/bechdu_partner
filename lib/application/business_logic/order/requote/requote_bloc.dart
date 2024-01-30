import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'requote_event.dart';
part 'requote_state.dart';
part 'requote_bloc.freezed.dart';

@injectable
class RequoteBloc extends Bloc<RequoteEvent, RequoteState> {
  RequoteBloc() : super(RequoteState.initial()) {
    on<_ChangeIndex>(changeIndex);
    on<_MarkAnswer>(markAnswer);
  }

  changeIndex(event, emit) {
    // if index is in side the range
    if (state.requoteIndex < state.map.length - 1) {
      // find the count of marked items
      // int count =getCount();
      // // if all options must be selected
      // if (state.map[state.requoteIndex]['sectionCriteria'] == 'all' &&
      //     count != state.map[state.requoteIndex]['data'].length) {
      //   return emit(
      //     state.copyWith(message: 'Must answer all questions before continue'),
      //   );
      // } // if some options must be selected
      // else if (state.map[state.requoteIndex]['sectionCriteria'] == 'some' &&
      //     count == 0) {
      //   return emit(
      //     state.copyWith(message: 'Atlest one should be selected'),
      //   );
      // }
      // if all the conditions satisfied then change index
      return emit(
        state.copyWith(requoteIndex: state.requoteIndex + 1, message: null),
      );
    }else{
      
    }
  }

  markAnswer(event, emit) {

  }

  int getCount() {
    int count = 0;
    state.markedanswer.where((element) {
      count = element['sectionHeading'] ==
              state.map[state.requoteIndex]['sectionHeading']
          ? count + 1
          : count;
      return false;
    });
    return count;
  }
}
