import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCustom extends StatelessWidget {
  final String url;
  final Icon icon;
  final String text1;
  final String text2;
  final Color colorx;
  final Color colory;

  const ProjectCustom({
    super.key,
    required this.url,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.colorx,
    required this.colory,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => _launchURL(url),
      radius: 50,
      splashColor: Colors.pink,
      child: Container(
        padding: EdgeInsets.all(10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: BoxBorder.all(color: Colors.blue, width: 2),
          gradient: LinearGradient(colors: [colorx, colory]),
        ),
        child: Column(
          children: [
            icon,
            SizedBox(height: 5),
            Text(
              text1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(text2, style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
        // child: Column(children: [Text(text1), Text(text2)]),
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
