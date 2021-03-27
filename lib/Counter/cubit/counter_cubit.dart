import 'package:bloc/bloc.dart';

//Each Cubit has the ability to output a new state via emit.

class CounterCubit extends Cubit<int> {
  //Output tipini bir class vb. de yapabiliriz.
  CounterCubit()
      : super(0); //boş instance oluşturunca initial value için 0 ata.

  void increment() {
    emit(state +
        1); //Bu state bizim output tipimizle aynı. state'i sadece emit ile alabiliyoruz.
    //emit metodu notify ediyor. notifyListener metodu gibi de diyebiliriz
    //burada state kullanıyoruz direkt burada mesela counterValue değişkeni oluşturup onu göndermektense. Çünkü zaten her türlü state tipinde bir şey dönecek.
  }

  void decrement() {
    emit(state - 1);
  }

  void superIncrement() {
    emit(state + 100);
  }
}

/*
class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);
}
 */
