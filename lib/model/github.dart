import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class GithubClass {
  final String name, description, url;
  GithubClass({this.name, this.description, this.url});
}

class Github with ChangeNotifier {
  static const String _url = 'https://api.github.com/users/shaw8wit/repos';
  List<GithubClass> l = [];

  Future<void> loadProjects() async {
    try {
      final response = await http.get(_url);
      final data = json.decode(response.body);
      data.forEach((e) => l.add(GithubClass(
            name: e['name'],
            description: e['description'],
            url: e['html_url'],
          )));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
