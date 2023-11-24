import 'package:first_app/screens/dice_roller.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Image_Show extends StatelessWidget {
  const Image_Show(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: const Center(
          child: DiceRoller(),
        ),
      ))),
    );
  }
}
