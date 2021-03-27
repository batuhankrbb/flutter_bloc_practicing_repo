import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_cubit.dart';

class WrappedCounterCubitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterCubitApp(),
    );
  }
}

class CounterCubitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Test"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, snapshot) {
                if (snapshot < 0) {
                  return Text(
                    "${snapshot}",
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  );
                } else if (snapshot == 0) {
                  return Text(
                    "${snapshot}",
                    style: TextStyle(fontSize: 40, color: Colors.blue),
                  );
                } else {
                  return Text(
                    "${snapshot}",
                    style: TextStyle(fontSize: 40, color: Colors.green),
                  );
                }
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: context.read<CounterCubit>().increment,
            child: Text("Increase"),
          ),
          TextButton(
            onPressed: context.read<CounterCubit>().decrement,
            child: Text("Decrease"),
          ),
          TextButton(
            onPressed: context.read<CounterCubit>().superIncrement,
            child: Text("Super Increase"),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
