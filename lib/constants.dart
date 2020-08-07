import 'package:flutter/material.dart';
import 'package:portfolio/widgets/reachTile.dart';

final List<Widget> contactList = [
  ReachTile(
    icon: Image.asset('assets/images/github.png'),
    title: 'Github',
    destination: 'https://www.github.com/shaw8wit',
  ),
  ReachTile(
    icon: Image.asset('assets/images/linkedin.png'),
    title: 'LinkedIn',
    destination: 'https://www.linkedin.com/in/shaw8wit',
  ),
  ReachTile(
    icon: Icon(Icons.email, color: Colors.black),
    title: 'Email',
    destination: 'mailto:shaw8wit@gmail.com?subject=Portfolio',
  ),
  ReachTile(
    icon: Image.asset('assets/images/hackerrank.png'),
    title: 'LinkedIn',
    destination: 'https://www.hackerrank.com/shaw8wit',
  ),
  ReachTile(
    icon: Icon(Icons.phone, color: Colors.black),
    title: 'Call',
    destination: 'tel:8250541130',
  ),
];

final TextStyle heading = TextStyle(fontWeight: FontWeight.w600, fontSize: 30);
final TextStyle appbar = TextStyle(fontWeight: FontWeight.w400, fontSize: 14);
final TextStyle pTitle = TextStyle(fontWeight: FontWeight.w700, fontSize: 21);
final TextStyle pBody = TextStyle(fontWeight: FontWeight.w500, fontSize: 18);

final double aHeight = 80;
