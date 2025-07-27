import 'package:flutter/material.dart';

class Skillcontainer extends StatelessWidget {
  final String text;
  final Color colorx;
  final Color colory;

  const Skillcontainer({super.key, required this.text, required this.colorx,required this.colory});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [colorx, colory]),
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}
