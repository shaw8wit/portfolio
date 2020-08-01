import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;

  Layout({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 65),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height - 100,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1050),
        child: child,
      ),
    );
  }
}
