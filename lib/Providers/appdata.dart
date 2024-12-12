import 'package:flutter_bloc/flutter_bloc.dart';

class AppData extends Cubit {
  AppData() : super(0);
  int number = 0;
  void increment() => emit(number++);
  void decrement() => emit(number--);

  String qSearch = "";
  void qUpdate(String newQ) => emit(qSearch = newQ);
}
