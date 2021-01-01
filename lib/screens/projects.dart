import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/github.dart';
import '../widgets/item.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.75);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 0),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height * 0.88 - 200,
      child: Consumer<Github>(
        builder: (context, git, _) {
          return PageView(
            controller: pageController,
            children: git.l
                .asMap()
                .entries
                .map((e) => Item(e.value, pageOffset - e.key))
                .toList(),
          );
        },
      ),
    );
  }
}
