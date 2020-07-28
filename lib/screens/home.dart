import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/intro.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/projects.dart';

class Home extends StatelessWidget {
  final List<Widget> pages = [About(), Intro(), Projects(), Contact()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6fef6),
      appBar: AppBar(
        // leading: Icon(Icons.access_time),
        // actions: [
        //   Text('About'),
        //   Text('Projects'),
        //   Text('Contact'),
        // ],
        toolbarHeight: 100,
      ),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, i) {
          return pages[i];
        },
      ),
    );
  }
}
