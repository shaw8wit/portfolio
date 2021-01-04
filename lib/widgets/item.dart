import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../model/github.dart';
import 'itemValue.dart';
import 'reachTile.dart' as r;

class Item extends StatelessWidget {
  final GithubClass g;
  final double offset;
  Item(this.g, this.offset);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-50 * gauss * offset.sign, 0),
      child: GestureDetector(
        onTap: () => r.launc(g.url),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffefefdb), Color(0xffffffeb)],
            ),
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              const BoxShadow(
                color: Color(0xffffffff),
                blurRadius: 8.0,
                spreadRadius: 2.0,
                offset: Offset(-6.0, -6.0),
              ),
              const BoxShadow(
                color: Color(0xfddddddd),
                blurRadius: 8.0,
                spreadRadius: 2.0,
                offset: Offset(6.0, 6.0),
              ),
            ],
          ),
          child: Column(
            children: [
              ItemValue(g.name, 32 * offset, 2),
              (MediaQuery.of(context).size.aspectRatio > 2.5
                  ? SizedBox.shrink()
                  : ItemValue(g.description ?? "No Description yet!\nClick to learn more.", 24 * offset, 3)),
            ],
          ),
        ),
      ),
    );
  }
}
