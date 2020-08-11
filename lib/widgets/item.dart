import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:portfolio/model/github.dart';
import 'package:portfolio/widgets/itemValue.dart';
import 'package:portfolio/widgets/reachTile.dart' as r;

class Item extends StatelessWidget {
  final GithubClass g;
  final double offset;
  Item(this.g, this.offset);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-48 * gauss * offset.sign, 0),
      child: GestureDetector(
        onTap: () => r.launc(g.url),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffefefdb),
                Color(0xffffffeb),
              ],
            ),
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: const Color(0xfeeeeee0),
                blurRadius: 8.0,
                spreadRadius: 2.0,
                offset: Offset(
                  5.0,
                  5.0,
                ),
              ),
              BoxShadow(
                color: const Color(0xfffffff4),
                blurRadius: 8.0,
                spreadRadius: 2.0,
                offset: Offset(
                  -5.0,
                  -5.0,
                ),
              ),
            ],
          ),
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            borderOnForeground: false,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Column(
              children: [
                ItemValue(g.name, 32 * offset, 2),
                ItemValue(
                  g.description ?? "No Description yet!\nClick to learn more.",
                  24 * offset,
                  3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
