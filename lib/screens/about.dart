import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/screens/layout.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shouvit Pradhan",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 30),
                Text(
                  "Currently in the final year of my Bachelors in Technology with major in Computer Science.",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.centerRight,
            color: Colors.red,
            height: 350,
            width: 350,
            // child: SvgPicture.asset(
            //   "assets/images/home.svg",
            //   color: Colors.amber,
            // ),
          ),
        ],
      ),
    );
  }
}
