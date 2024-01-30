import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersState.initial()) {
    on<_AcceptOrder>((event, emit) {
      emit(state.copyWith(newOrder: false));
    });
    on<_MakeNewOrder>((event, emit) {
      emit(state.copyWith(newOrder: true));
    });
  }
}
