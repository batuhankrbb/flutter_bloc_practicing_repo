import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practicing_repo/counter_improved/events.dart';
import 'package:flutter_bloc_practicing_repo/counter_improved/model/improved_counter_model.dart';
import 'package:flutter_bloc_practicing_repo/counter_improved/states.dart';

class ImprovedCounterBloc
    extends Bloc<ImprovedCounterEvent, ImprovedCounterState> {
  ImprovedCounterBloc() : super(ImprovedCounterInitial());

  ImprovedCounterModel _counterModel = ImprovedCounterModel();

  @override
  Stream<ImprovedCounterState> mapEventToState(
      ImprovedCounterEvent event) async* {
    if (event is ImprovedCounterIncrease) {
      _counterModel.counterValue += 1;
      yield ImprovedCounterChangeSuccess(_counterModel);
    } else if (event is ImprovedCounterDecrease) {
      _counterModel.counterValue -= 1;
      yield ImprovedCounterChangeSuccess(_counterModel);
    } else if (event is ImprovedCounterSuperIncrease) {
      _counterModel.counterValue += 100;
      yield ImprovedCounterChangeSuccess(_counterModel);
    } else if (event is ImprovedCounterSuperDecrease) {
      _counterModel.counterValue -= 100;
      yield ImprovedCounterChangeSuccess(_counterModel);
    } else if (event is ImprovedCounterChangeName) {
      _counterModel.counterName = event.name;
      yield ImprovedCounterChangeSuccess(_counterModel);
    }
  }
}

/*
abstract class ImprovedCounterEvent {}

class Increase extends ImprovedCounterEvent {}

class Decrease extends ImprovedCounterEvent {}

class SuperIncrease extends ImprovedCounterEvent {}

class SuperDecrease extends ImprovedCounterEvent {}

class ChangeName extends ImprovedCounterEvent {
  String name;
  ChangeName(this.name);
}

 */

/*
abstract class ImprovedCounterState {}

class CounterChangeError extends ImprovedCounterState {
  final String errorMessage;
  CounterChangeError(this.errorMessage);
}

class CounterChangeSuccess extends ImprovedCounterState {
  final ImprovedCounterModel counterVal;

  CounterChangeSuccess(this.counterVal);
}

class CounterChangeLoading extends ImprovedCounterState {}

class CounterInitial extends ImprovedCounterState {}

 */
