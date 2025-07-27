import 'package:flutter/material.dart';
import 'package:portfolio/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      home: Splash(),
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
    );
  }
}
