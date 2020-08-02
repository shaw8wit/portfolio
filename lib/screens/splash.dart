import 'package:flutter/material.dart';
import 'package:portfolio/model/github.dart';
import 'package:portfolio/screens/home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Provider.of<Github>(context, listen: false).loadProjects();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: Home(),
      title: const Text(
        'Welcome to Shouvit\'s portfolio',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0),
      ),
      image: Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Color(0xfffffff2),
      photoSize: 100.0,
      onClick: () {},
      loaderColor: Colors.greenAccent,
    );
  }
}
