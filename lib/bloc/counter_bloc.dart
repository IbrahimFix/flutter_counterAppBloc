// counter_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:counter_app_bloc/bloc/counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
    //Increment
    on<CounterIncrement>((event, emit) {
      emit(CounterState(counterValue: state.counterValue + 1));
    });
//Decrement
    on<CounterDecrement>((event, emit) {
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
