import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/intro.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/widgets/headOption.dart';

class Home extends StatelessWidget {
  final List<Widget> pages = [About(), Intro(), Projects(), Contact()];
  final PageController pageController = PageController();

  void _scrollToIndex(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1500),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffffff2),
        appBar: AppBar(
          leading: Icon(Icons.skip_next),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          actions: [
            HeadOption(title: 'About', f: () => _scrollToIndex(1)),
            HeadOption(title: 'Projects', f: () => _scrollToIndex(2)),
            HeadOption(title: 'Contact', f: () => _scrollToIndex(3)),
          ],
          toolbarHeight: 90,
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: pageController,
          children: List.generate(pages.length, (index) {
            return pages[index];
          }),
        ),
      ),
    );
  }
}
