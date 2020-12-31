import 'package:flutter/material.dart';

import '../constants.dart' as k;
import '../widgets/footer.dart';
import '../widgets/layout.dart';

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
