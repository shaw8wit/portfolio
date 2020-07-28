import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shouvit Pradhan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Quicksand'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
      },
    );
  }
}
// #A5D040
