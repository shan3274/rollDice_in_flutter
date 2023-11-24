import 'package:flutter/material.dart';

const stratAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: camel_case_types
class First_Widget extends StatelessWidget {
  const First_Widget(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: colors, begin: stratAlignment, end: endAlignment),
            ),
            child: const Center(
              child: Styled_Texted("I love india"),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Styled_Texted extends StatelessWidget {
  const Styled_Texted(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 30),
    );
  }
}
