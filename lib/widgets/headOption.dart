import 'package:flutter/material.dart';

import '../constants.dart' as k;

class HeadOption extends StatelessWidget {
  final Function f;
  final String title;

  HeadOption({this.f, this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: f,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 0, horizontal: 0.01 * MediaQuery.of(context).size.width),
        child: Center(child: Text(title, style: k.appbar)),
      ),
    );
  }
}
