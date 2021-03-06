import 'dart:math' as m;

import 'package:flutter/material.dart';

import '../widgets/layout.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SizedBox.expand(
        child: Card(
          elevation: 8,
          color: const Color(0xffffffeb),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (MediaQuery.of(context).size.aspectRatio > 1.45)
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    height: 400,
                    width: 400,
                    child: Image.asset('assets/images/intro.png'),
                  ),
                Expanded(
                  child: Text(
                    "I'm a Software Developer from India.\nI love puzzles and problem solving.\nA Competetive programmer from time to time.\nInterested in Flutter, Machine Learning, Web Development, Deep Learning and Software Development in general.\nLove Football, Anime, working-out and anything related to tech.",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          m.max(MediaQuery.of(context).size.width * 0.019, 17),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
