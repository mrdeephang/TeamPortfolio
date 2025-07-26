import 'package:flutter/material.dart';

class Skillcontainer extends StatelessWidget {
  final String text;
  final Color colorx;

  const Skillcontainer({super.key, required this.text, required this.colorx});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorx,
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}
