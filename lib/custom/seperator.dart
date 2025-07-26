import 'package:flutter/material.dart';

class Seperator extends StatelessWidget {
  const Seperator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [Colors.greenAccent, Colors.pink]),
      ),
    );
  }
}
