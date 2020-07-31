import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';
import 'package:portfolio/constants.dart' as k;

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Reach out to Me @", style: k.heading),
          Wrap(
            alignment: WrapAlignment.spaceAround,
            runSpacing: 80,
            spacing: 100,
            children: k.contactList,
          ),
        ],
      ),
    );
  }
}
