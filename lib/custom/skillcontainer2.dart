import 'package:flutter/material.dart';

class SkillContainer extends StatelessWidget {
  final String text;
  final Color colorx;
  final Color colory;

  const SkillContainer({
    super.key,
    required this.text,
    required this.colorx,
    required this.colory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [colorx, colory]),
      ),
      child: Row(
        children: [
          SizedBox(width: 5),
          Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}
