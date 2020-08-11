import 'package:flutter/material.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/layout.dart';
import 'package:portfolio/constants.dart' as k;

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Column(
        children: [
          Expanded(
            child: Layout(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Reach out to Me @", style: k.heading),
                  Wrap(
                    alignment: WrapAlignment.spaceAround,
                    runSpacing: 50,
                    spacing: 80,
                    children: k.contactList,
                  ),
                ],
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
