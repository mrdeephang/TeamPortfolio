import 'package:flutter/material.dart';
import 'package:team_portfolio/main.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 233, 233),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
      ),
      drawer: customDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/krish.jpg'),
                      radius: 100.0,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Suraj Jha',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(blurRadius: 50, color: Colors.lightBlueAccent),
                  ],
                ),
                child: Text(
                  'my self sura jha , i am tech enthusiast,I specialize in cross-platform app development using Flutter and Dart, and I also enjoy creating full-stack web projects with React, Django, and SQLite. ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 10,
                  width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green, Colors.deepOrange],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.laptop_mac),
                  Text(
                    'Skills',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 16, 16, 16),
                            const Color.fromARGB(255, 255, 245, 64),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'c/c++',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 13, 13, 13),
                            Colors.pink,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Java',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 15, 15, 15),
                            Colors.pink,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'html/css/javascript',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 9, 9, 9),
                            const Color.fromARGB(255, 30, 33, 233),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Dart/flutter',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 16, 16, 16),
                            const Color.fromARGB(255, 255, 64, 64),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Canva/Figma',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 16, 16, 16),
                            const Color.fromARGB(255, 255, 64, 64),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'English/Nepali/Bajjika/Hindi',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 10,
                  width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green, Colors.deepOrange],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lightbulb,
                    color: Colors.deepOrangeAccent,
                    size: 30.0,
                  ),
                  Text(
                    'Featured Projects',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkResponse(
                      onTap: () {},
                      radius: 40,
                      splashColor: Colors.amber,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: RadialGradient(
                            colors: [Colors.yellow, Colors.deepOrangeAccent],
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.book, size: 100, color: Colors.white),
                            Text(
                              'Mero Library',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Withdraw,Insert',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: RadialGradient(
                          colors: [Colors.lightGreenAccent, Colors.pink],
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.agriculture,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            'Hamro krishi',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Recommend Crop',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: RadialGradient(
                          colors: [Colors.blue, Colors.deepPurple],
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.android, size: 100, color: Colors.white),
                          Text(
                            'My_Portfolio_app',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'See my portfolio',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.school, size: 30, color: Colors.pink),
                  Text(
                    'Education',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                width: 400,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.deepOrangeAccent,
                      Colors.deepPurple,
                    ],
                  ),
                  boxShadow: [BoxShadow(blurRadius: 30, color: Colors.black)],
                ),
                child: Column(
                  children: [
                    Text(
                      'Secondary Education Examination',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Shree Janta Satyanarayan Higher Secondary School ',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '(10+2 in Science )',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Aroma College of Applied Science and Management ',
                      style: TextStyle(fontSize: 15),
                    ),

                    Text(
                      '(Bachelor in Computer Engineering )',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Unite Technical College ,Pokhara University ',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Honors & Awards',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Divider(
                height: 5,
                thickness: 10,
                color: Colors.pink,
                indent: 150,
                endIndent: 150,
                radius: BorderRadius.circular(5.0),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.manage_accounts, size: 25.0, color: Colors.blue),
                  Text(
                    'Experience and Participation',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(blurRadius: 40, color: Colors.lightBlueAccent),
                  ],
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '🟣2025 - Present',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Text(
                      'Flutter Intern at Smait Technology',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Working on real-world Flutter projects, contributing to UI development.',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Column(
                      children: [
                        Align(alignment: Alignment.center),
                        Text(
                          '🟣Utech Hackathon-B(2024)',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    Text(
                      'Successfully organized a tech-focused hackathon to engage students in innovation and teamwork.',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      '🟣 United Tech Fusion-2023',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      'Participated with multiple teams and demonstrated a project, gaining hands-on experience in teamwork, innovation, and public presentation.',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                height: 10.0,
                thickness: 10.0,
                color: Colors.pink,
                radius: BorderRadius.circular(5.0),
                indent: 150,
                endIndent: 150,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    size: 30,
                    color: const Color.fromARGB(255, 119, 199, 199),
                  ),
                  Text(
                    'Contact Me',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color.fromARGB(255, 119, 199, 199),
                    boxShadow: [BoxShadow(blurRadius: 30, color: Colors.blue)],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: const Color.fromARGB(255, 17, 17, 17),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.person, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: Colors.white,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                          ),
                          validator: (value) {
                            if (value == null) {
                              return "Null is rejected";
                            }
                            return value;
                          },
                          // obscureText: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: Colors.white,
                            hintText: 'Write a Message',
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: () {
                    print(nameController.text);
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.pink),
                  child: Text('submit', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              // Divider(
              //   height: 10.0,
              //   thickness: 10.0,
              //   color: Colors.pink,
              //   radius: BorderRadius.circular(5.0),
              //   indent: 150,
              //   endIndent: 150,
              // ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.public, size: 30, color: Colors.pink),
                  Text(
                    'Connect With Me',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, size: 60, color: Colors.blue),
                  Icon(Icons.tiktok, size: 60),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    print('download this page');
                  },
                  child: Icon(Icons.download, color: Colors.pink),
                ),
              ),

              SizedBox(height: 40),
              Divider(
                thickness: 1.5,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.copyright),
                  Text('Suraj Jha All rights reserved'),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
