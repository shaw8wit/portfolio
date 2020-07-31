import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart' as k;

class HeadOption extends StatelessWidget {
  final Function f;
  final String title;
  HeadOption({this.f, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Center(child: Text(title, style: k.appbar)),
      ),
      onTap: f,
    );
  }
}
