import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SizedBox.expand(
        child: Card(
          elevation: 8,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  child: Image.asset('assets/images/intro.png'),
                ),
                const SizedBox(width: 35),
                Expanded(
                  child: const Text(
                    "I'm a Software Developer from India.\nI love puzzles and problem solving.\nA Competetive programmer from time to time.\nInterested in Flutter, Machine Learning, Web Development, Deep Learning and Software Development in general.\nLove Football, Anime, working-out and anything related to tech.",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
