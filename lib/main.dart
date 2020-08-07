import 'package:flutter/material.dart';
import 'package:portfolio/model/github.dart';
import 'package:portfolio/screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<Github>(
      create: (context) => Github(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shouvit Pradhan',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xffadd55a, color),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Quicksand'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}
// #A5D040
