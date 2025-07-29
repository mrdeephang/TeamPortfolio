import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Customdrawer extends StatelessWidget {
  const Customdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.black]),
            ),
            accountName: Text(
              "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              ' Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: Icon(
              Icons.waving_hand,
              size: 90,
              color: Colors.white,
            ),
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: AssetImage('assets/images/pfp.jpg'),
            // ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Portfolio()),
              );
            },
            child: ListTile(
              leading: Icon(Icons.home, size: 30),
              title: Text('Home', style: TextStyle(fontSize: 18)),
              // subtitle: Text('Demo'),
              // isThreeLine: true,
            ),
          ),
          Divider(color: Colors.grey),
          InkWell(
            onTap: () => _launchURL(
              'https://drive.google.com/file/d/1lR5LowemN4o9E9FlCqUiIYmbIsE0ynlS/view?usp=sharing',
            ),
            child: ListTile(
              leading: Icon(Icons.description, size: 30),
              title: Text('Resume/CV', style: TextStyle(fontSize: 18)),
              // subtitle: Text('Demo'),
              // isThreeLine: true,
            ),
          ),
          Divider(color: Colors.grey),
          InkWell(
            onTap: () => _launchURL('https://deephangthegim.com.np/'),
            child: ListTile(
              leading: Icon(Icons.web, size: 30),
              title: Text('Website', style: TextStyle(fontSize: 18)),
              // subtitle: Text('Demo'),
              // isThreeLine: true,
            ),
          ),

          // subtitle: Text('Demo'),
          // isThreeLine: true,
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Version 1.0.0',
              style: TextStyle(color: Colors.black45, fontSize: 15),
            ),
          ),
        ],
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
