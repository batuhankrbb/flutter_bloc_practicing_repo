import 'model/improved_counter_model.dart';

abstract class ImprovedCounterState {}

class ImprovedCounterChangeError extends ImprovedCounterState {
  final String errorMessage;
  ImprovedCounterChangeError(this.errorMessage);
}

class ImprovedCounterChangeSuccess extends ImprovedCounterState {
  final ImprovedCounterModel counterVal;

  ImprovedCounterChangeSuccess(this.counterVal);
}

class ImprovedCounterChangeLoading extends ImprovedCounterState {}

class ImprovedCounterInitial extends ImprovedCounterState {}
