import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Projects"),
        ],
      ),
    );
  }
}
