import 'package:flutter/material.dart';
import 'package:portfolio/model/github.dart';
import 'package:portfolio/widgets/reachTile.dart' as r;

class Item extends StatelessWidget {
  final GithubClass g;
  Item(this.g);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => r.launc(g.url),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Card(
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          child: Column(
            children: [
              Expanded(child: Text(g.name), flex: 2),
              Expanded(child: Text(g.description ?? "none"), flex: 3)
            ],
          ),
        ),
      ),
    );
  }
}
