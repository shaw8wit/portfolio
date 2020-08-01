import 'package:flutter/material.dart';
import 'package:portfolio/widgets/reachTile.dart';

final List<Widget> contactList = [
  ReachTile(
    icon: Image.asset('assets/images/linkedin.png'),
    title: 'LinkedIn',
    destination: 'https://www.linkedin.com/in/shaw8wit',
  ),
  ReachTile(
    icon: Image.asset('assets/images/github.png'),
    title: 'Github',
    destination: 'https://www.github.com/shaw8wit',
  ),
  ReachTile(
    icon: Icon(Icons.email, color: Colors.black),
    title: 'Email',
    destination: 'mailto:shaw8wit@gmail.com?subject=Portfolio',
  ),
  ReachTile(
    icon: Icon(Icons.phone, color: Colors.black),
    title: 'Call',
    destination: 'tel:8250541130',
  ),
];

final TextStyle heading = TextStyle(fontWeight: FontWeight.w600, fontSize: 30);
final TextStyle appbar = TextStyle(fontWeight: FontWeight.w400, fontSize: 16);
