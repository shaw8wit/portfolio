import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launc(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ReachTile extends StatelessWidget {
  final icon;
  final String title, destination;

  ReachTile({this.icon, this.title, this.destination});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      icon: icon,
      tooltip: title,
      onPressed: () => {launc(destination)},
    );
  }
}
