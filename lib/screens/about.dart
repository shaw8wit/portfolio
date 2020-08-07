import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MediaQuery.of(context).size.aspectRatio > 1.1
          ? NotMobile()
          : Mobile(),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.45,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Image.asset('assets/images/intro.png'),
          margin: const EdgeInsets.only(bottom: 5),
        ),
        Text(
          "Shouvit Pradhan",
          style: TextStyle(
            fontSize: 0.06 * MediaQuery.of(context).size.width,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Final year Bachelors in Technology student.\nComputer Science Major.",
          style: TextStyle(
            fontSize: 0.03 * MediaQuery.of(context).size.width,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class NotMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: TextStyle(
                  fontSize: 0.055 * MediaQuery.of(context).size.width,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Final year Bachelors in Technology student.\nComputer Science Major.",
                style: TextStyle(
                  fontSize: 0.02 * MediaQuery.of(context).size.width,
                  fontWeight: FontWeight.w600,
                ),
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
    );
  }
}
