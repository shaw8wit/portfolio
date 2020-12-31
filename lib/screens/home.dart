import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/headOption.dart';
import 'about.dart';
import 'contact.dart';
import 'intro.dart';
import 'projects.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = [About(), Intro(), Projects(), Contact()];

  final PageController pageController = PageController();

  double _offset = 0;

  void _scrollToIndex(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.decelerate,
    );
  }

  double min(double a, double b) => a > b ? a : b;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffefeef),
        appBar: AppBar(
            leading: Icon(Icons.skip_next),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            actions: [
              HeadOption(title: 'About', f: () => _scrollToIndex(1)),
              HeadOption(title: 'Projects', f: () => _scrollToIndex(2)),
              HeadOption(title: 'Contact', f: () => _scrollToIndex(3)),
            ],
            toolbarHeight: MediaQuery.of(context).size.height * 0.12),
        floatingActionButton: FloatingActionButton.extended(
          tooltip: "Go to Top",
          hoverColor: Theme.of(context).accentColor,
          hoverElevation: 100,
          onPressed: () => _scrollToIndex(0),
          label: Row(
            children: [
              Icon(Icons.arrow_upward),
              SizedBox(width: 10),
              Text("Top"),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: PageView(
                onPageChanged: (a) {
                  setState(() {
                    _offset = a * MediaQuery.of(context).size.height * 0.88 / 4;
                  });
                },
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                controller: pageController,
                children: List.generate(pages.length, (index) {
                  return pages[index];
                }),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height,
              width: 15.0,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width - 15.0),
              decoration: BoxDecoration(color: Colors.black12),
              child: Container(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  child: Container(
                    height: 40.0,
                    width: 15.0,
                    margin:
                        EdgeInsets.only(left: 2.5, right: 2.5, top: _offset),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onVerticalDragUpdate: (dragUpdate) {
                    pageController.position.moveTo(min(
                            0,
                            dragUpdate.globalPosition.dy -
                                MediaQuery.of(context).size.height * 0.12) *
                        3.5);
                    setState(() {
                      if (dragUpdate.globalPosition.dy >= 0) {
                        _offset = min(
                            0,
                            dragUpdate.globalPosition.dy -
                                1.2 *
                                    MediaQuery.of(context).size.height *
                                    0.12);
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
