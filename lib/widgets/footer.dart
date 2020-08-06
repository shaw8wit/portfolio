import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      color: Color(0xff77bbff),
      child: Center(
        child: Text(
          "Copyright © Shouvit Pradhan",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
