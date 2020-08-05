import 'package:flutter/material.dart';
import 'package:portfolio/widgets/item.dart';
import 'package:portfolio/widgets/layout.dart';
import 'package:portfolio/model/github.dart';
import 'package:provider/provider.dart';

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
    pageController = PageController(viewportFraction: 0.8);
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
    return Layout(
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
// ListView.builder(
//             itemCount: git.l.length,
//             itemBuilder: (context, i) => Item(git.l[i]),
//           )
