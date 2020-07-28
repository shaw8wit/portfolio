import 'package:flutter/material.dart';
import 'package:portfolio/screens/layout.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SizedBox.expand(
        child: Card(
          elevation: 8,
          color: Colors.lightGreenAccent[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.green,
              ),
              Spacer(),
              Text(
                  "data skdflkd ksdmflmsd\nsdjfkldsjfl\nsdjfkjsdfkjsdkjf\nsjdfhkjsdfkjdshfk"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
