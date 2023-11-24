import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var value = randomizer.nextInt(6) + 1;
  rollDice() {
    setState(() {
      value = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$value.png',
        width: 200,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text(
              "roll the dice",
            )),
      ),
    ]);
  }
}
