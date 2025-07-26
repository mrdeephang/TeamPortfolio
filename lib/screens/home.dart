import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/custom/projectcustom.dart';
import 'package:portfolio/custom/seperator.dart';
import 'package:portfolio/custom/skillcontainer.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Positioned(
                  bottom: -60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pfp.jpg'),
                    radius: 70,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Column(
              spacing: 3,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Deephang',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Thegim',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Aspiring Computer Engineer',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, size: 25, color: Colors.blue),
                    Text(
                      'Budanilkantha',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(18),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.black),
                      ],
                    ),
                    child: Text(
                      "I'm a recent graduate with a Bachelor's Degree in Computer Engineering. Passionate about technology, my interests lie in UI/UX Design, Web and App Development. Always eager to learn, collaborate, and build solutions that make a difference.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Seperator()),
                      SizedBox(height: 20),
                      Text(
                        'Skills',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Skillcontainer(text: 'Flutter', colorx: Colors.blue),
                        SizedBox(width: 5),
                        Skillcontainer(text: 'Dart', colorx: Colors.pinkAccent),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Git/GitHub',
                          colorx: Colors.purpleAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(text: 'C & C++', colorx: Colors.cyan),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'HTML, CSS & JS',
                          colorx: Colors.redAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Docker',
                          colorx: Colors.blueAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Figma',
                          colorx: Colors.pinkAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Canva',
                          colorx: Colors.purpleAccent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Skillcontainer(text: 'Leadership', colorx: Colors.blue),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Communication',
                          colorx: Colors.pinkAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Teamwork',
                          colorx: Colors.purpleAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Problem Solving',
                          colorx: Colors.cyan,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Creativity',
                          colorx: Colors.redAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Collaboration',
                          colorx: Colors.blueAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Critical Thinking',
                          colorx: Colors.pinkAccent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Skillcontainer(text: 'English', colorx: Colors.blue),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Nepali',
                          colorx: Colors.pinkAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(
                          text: 'Hindi',
                          colorx: Colors.purpleAccent,
                        ),
                        SizedBox(width: 5),
                        Skillcontainer(text: 'Japanese', colorx: Colors.cyan),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Seperator()),
                      SizedBox(height: 20),
                      Text(
                        'Featured Projects',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, //scrolls in horizontal direction
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ProjectCustom(
                          url: 'https://github.com/mrdeephang/Sajha_Bookstore',
                          colorx: Colors.pink,
                          colory: Colors.blue,
                          icon: Icon(
                            Icons.android,
                            size: 50,
                            color: Colors.white,
                          ),
                          text1: 'SajhaBookstore',
                          text2: 'Buy, Sell & Rent',
                        ),
                        SizedBox(width: 10),
                        ProjectCustom(
                          url: 'https://github.com/mrdeephang/SugarCare',
                          colorx: Colors.pink,
                          colory: Colors.green,
                          icon: Icon(
                            Icons.health_and_safety,
                            size: 50,
                            color: Colors.white,
                          ),
                          text1: 'Sugarcare',
                          text2: 'Diabetes Management',
                        ),
                        SizedBox(width: 10),
                        ProjectCustom(
                          url: 'https://github.com/mrdeephang/Radhe-Radhe',
                          colorx: Colors.blueAccent,
                          colory: Colors.pinkAccent,
                          icon: Icon(
                            Icons.sunny,
                            size: 50,
                            color: Colors.white,
                          ),
                          text1: 'Radhe Radhe',
                          text2: 'Manifest Everyday',
                        ),
                        SizedBox(width: 10),
                        ProjectCustom(
                          url: 'https://github.com/mrdeephang/To-Do',
                          colorx: Colors.deepPurpleAccent,
                          colory: Colors.pinkAccent,
                          icon: Icon(Icons.task, size: 50, color: Colors.white),
                          text1: 'TO DO',
                          text2: 'Track Your Daily Tasks',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Seperator()),
                      SizedBox(height: 20),
                      Text(
                        'Education',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.black),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '• SEE in Computer (3.95/4)',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Tri-Padma Vidhyashram Secondary School, Pulchowk, Lalitpur',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '• +2 Physcis (3.75/4)',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Tri-Padma Vidhyashram Secondary School, Pulchowk, Lalitpur',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '• Bachelor in Computer Engineering (80%)',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Kathmandu Engineering College, Kalimati, Kathmandu',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Align(
                          child: TextButton(
                            onPressed: () => _launchURL(
                              'https://github.com/mrdeephang/Honors-Rewards',
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),

                            child: Text(
                              'Honors & Rewards',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Seperator()),
                      SizedBox(height: 20),
                      Text(
                        'Experience',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 30,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // spacing: 10,
                      children: [
                        Text(
                          '• 2025 - Present',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Software Engineer Intern at SMAIT Technology/Software, Pokhara, Gandaki, Lisboa, Portugal',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '• 2020 - 2021',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Front-End Internship at Momtech Company, Shankhamul, Kathmandu',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Seperator()),
                      SizedBox(height: 30),
                      Text(
                        'Get In Touch',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.email, size: 28, color: Colors.black),
                      SizedBox(width: 10),
                      Text(
                        'thoklihang.deep@gmail.com',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.call, size: 28, color: Colors.black),
                      SizedBox(width: 10),
                      Text(
                        '9847600569',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () =>
                            _launchURL('https://github.com/mrdeephang'),
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () => _launchURL(
                          'https://www.linkedin.com/in/deephang-thegim-b858ab314/',
                        ),
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () =>
                            _launchURL('https://x.com/mr_deephang'),
                        icon: FaIcon(
                          FontAwesomeIcons.xTwitter,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 237, 237),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          //no validation in text field
                          controller: nameController,
                          decoration: InputDecoration(
                            // labelText: 'Full Name',
                            fillColor: Colors.blue,
                            filled: false,
                            hintText: 'Your Name',
                            hintStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                              gapPadding: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: emailController,
                          // validator: (value) {
                          //   if (value == null) {
                          //     return "adsasd";
                          //   }
                          //   return null;
                          // },
                          // obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.blue,
                            filled: false,
                            hintText: 'Email',
                            hintStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(Icons.email),
                            // suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                              gapPadding: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: subjectController,
                          decoration: InputDecoration(
                            // labelText: 'Full Name',
                            // fillColor: Colors.blue,
                            // filled: false,
                            hintText: 'Subject',
                            hintStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(Icons.bookmark),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                              gapPadding: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          //no validation in text field
                          controller: messageController,
                          decoration: InputDecoration(
                            // labelText: 'Full Name',
                            fillColor: Colors.blue,
                            filled: false,
                            hintText: 'Message',
                            hintStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(Icons.message),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                              gapPadding: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    child: ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: const Color.fromARGB(255, 63, 62, 62),
                    thickness: 1,
                  ),
                  Align(
                    child: Text(
                      '© 2025 Deephang Thegim. All rights reserved.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ),
                ], //Children
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  try {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  } catch (e) {
    ('Error launching URL: $e');
  }
}
