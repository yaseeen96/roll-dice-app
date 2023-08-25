// ignore_for_file: avoid_print

import 'dart:math';

import 'package:first_app/utils/utils.dart';
import 'package:flutter/material.dart';

class DiceContainer extends StatefulWidget {
  final String title;

  const DiceContainer({super.key, required this.title});

  @override
  State<DiceContainer> createState() => _DiceContainerState();
}

class _DiceContainerState extends State<DiceContainer> {
  var activeDiceImage = "assets/dice-images/dice-2.png";
  void rollDice() {
    int randomDice = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/dice-images/dice-$randomDice.png";
    });

    logWarning("Changing dice ");
    logSuccess("dice changed to $randomDice");
    logSuccess("success");
  }

  void easterEgg() {
    setState(() {
      activeDiceImage = "assets/dice-images/dice-7.png";
    });

    logWarning("Easter egg initiated");
    logSuccess("success");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(15),
            child: Image.asset(activeDiceImage)),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButton(
              onLongPress: easterEgg,
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.white),
              onPressed: rollDice,
              child: const Text(
                "Roll Dice",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}
