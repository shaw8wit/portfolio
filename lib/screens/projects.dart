import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';
import 'package:portfolio/model/github.dart';
import 'package:provider/provider.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Consumer<Github>(
        builder: (context, git, _) {
          return ListView.builder(
            itemCount: git.l.length,
            itemBuilder: (context, i) => Text(git.l[i].name),
          );
        },
      ),
    );
  }
}
