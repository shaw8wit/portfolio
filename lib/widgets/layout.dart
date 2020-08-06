import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart' as k;

class Layout extends StatelessWidget {
  final Widget child;

  Layout({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 65),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height - k.aHeight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1050),
        child: child,
      ),
    );
  }
}
