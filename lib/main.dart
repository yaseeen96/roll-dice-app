import 'package:first_app/diceContainer.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(233, 193, 195, 31),
              title: const Text(
                "Roll Dice App ST",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            body: Center(
              child: DiceContainer(title: "ss"),
            )));
  }
}
