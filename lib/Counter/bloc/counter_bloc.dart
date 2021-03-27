import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement, superIncrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    //responsible for converting any incoming events to one or more outgoing states
    //Blocs should never directly emit new states. Instead every state change must be output in response to an incoming event within mapEventToState.
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.superIncrement:
        yield state + 100;
        break;
    }
  }
}
