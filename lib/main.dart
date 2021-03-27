import 'package:flutter/material.dart';
import 'package:flutter_bloc_practicing_repo/Counter/cubit/counter_screen_cubit.dart';

import 'Counter/bloc/counter_screen_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WrappedCounterCubitApp(),
    );
  }
}
