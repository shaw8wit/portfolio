import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      color: Color(0xff270b7f),
      child: Center(
        child: Text(
          "Made with 💚 using Flutter © Shouvit Pradhan",
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
