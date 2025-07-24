import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      home: const Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // Image.asset("assets/images.krish.jpg"),
              SizedBox(height: 15.0),
              Text(
                'Welcome to my world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('assets/images/krish.jpg'),
                      ),
                      SizedBox(height: 15.0),

                      Text(
                        'Suraj Jha',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Divider(
                        height: 25,
                        thickness: 10,
                        color: Colors.blueAccent,
                        endIndent: 40,
                        indent: 25,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'About me',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: Colors.blue,
                        indent: 60,
                        endIndent: 60,
                        thickness: 10,
                        radius: BorderRadius.circular(10),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.deepPurpleAccent],
                  ),
                ),
                child: Text(
                  'my self sura jha , i am tech enthusiast,I specialize in cross-platform app development using Flutter and Dart, and I also enjoy creating full-stack web projects with React, Django, and SQLite. ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Featured Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
              Divider(height: 10, thickness: 5, color: Colors.black),

              Row(
                spacing: 10,
                children: [
                  Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: RadialGradient(
                        colors: [Colors.blue, Colors.deepPurpleAccent],
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.mobile_screen_share,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        Text(
                          'portfolio_app',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: RadialGradient(
                        colors: [Colors.blue, Colors.deepPurpleAccent],
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.mobile_screen_share,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        Text(
                          'Hamro_Krishi',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(children: [Text('Education')]),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
