import 'package:flutter/material.dart';

class Formsubmission extends StatefulWidget {
  const Formsubmission({super.key});

  @override
  State<Formsubmission> createState() => _FormsubmissionState();
}

class _FormsubmissionState extends State<Formsubmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Form Submission',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [
        
          
        ],
      ),
    );
  }
}
