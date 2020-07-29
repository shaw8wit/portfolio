import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shouvit Pradhan",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 25),
                Text(
                  "Currently in the final year of my Bachelors in Technology with major in Computer Science.",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/intro.png'),
            ),
          ),
        ],
      ),
    );
  }
}
