import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  _launch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Contact Me:"),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                iconSize: 40,
                icon: Image.asset('assets/images/linkedin.png'),
                tooltip: 'LinkedIn',
                onPressed: () =>
                    {_launch('https://www.linkedin.com/in/shaw8wit')},
              ),
              IconButton(
                iconSize: 40,
                icon: Image.asset('assets/images/github.png'),
                tooltip: 'Github',
                onPressed: () => {_launch('https://www.github.com/shaw8wit')},
              ),
              IconButton(
                iconSize: 40,
                icon: Icon(Icons.email, color: Colors.black),
                tooltip: 'Email',
                onPressed: () => {_launch('https://www.github.com/shaw8wit')},
              ),
              Container(
                width: 200,
                height: 200,
                child: Icon(Icons.android, size: 60, color: Colors.grey[800]),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.grey[200],
                      Colors.grey[300],
                      Colors.grey[400],
                      Colors.grey[500],
                    ],
                    stops: [0.1, 0.3, 0.8, 1],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
