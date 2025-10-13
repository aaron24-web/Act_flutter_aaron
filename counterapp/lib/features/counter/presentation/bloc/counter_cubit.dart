
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counterapp/features/counter/presentation/bloc/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0));

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }

  void decrement() {
    if (state.count == 0) return;
    emit(state.copyWith(count: state.count - 1));
  }

  void reset() {
    emit(state.copyWith(count: 0));
  }
}
