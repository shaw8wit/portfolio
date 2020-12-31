import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;

  Layout({this.child});

  @override
  Widget build(BuildContext context) {
    var m = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: m.aspectRatio < 0.8 ? 40 / m.aspectRatio : 0,
        horizontal: 0,
      ),
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 65),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height * 0.88 - 200,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1050),
        child: child,
      ),
    );
  }
}
