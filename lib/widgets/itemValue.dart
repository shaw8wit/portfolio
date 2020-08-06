import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart' as k;

class ItemValue extends StatelessWidget {
  final double offset;
  final String value;
  final int flex;
  ItemValue(this.value, this.offset, this.flex);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Transform.translate(
        offset: Offset(offset, 0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            child: Text(
              value,
              style: flex == 2 ? k.pTitle : k.pBody,
            ),
          ),
        ),
      ),
      flex: flex,
    );
  }
}