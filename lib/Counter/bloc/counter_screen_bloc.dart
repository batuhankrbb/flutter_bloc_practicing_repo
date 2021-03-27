import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class WrappedCounterBlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: CounterBlocApp(),
    );
  }
}

class CounterBlocApp extends StatelessWidget {
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
            child: BlocConsumer<CounterBloc, int>(
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
              listener: (context, snapshot) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Wowww! You exceeded 10!"),
                      content: Text("KAPPA"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("gimme a break."),
                        ),
                      ],
                    );
                  },
                );
              },
              listenWhen: (previousValue, currentValue) {
                return currentValue == 10 && previousValue == currentValue - 1;
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterEvent.increment);
            },
            child: Text("Increase"),
          ),
          TextButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterEvent.decrement);
            },
            child: Text("Decrease"),
          ),
          TextButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterEvent.superIncrement);
            },
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
