import 'package:FaciliTalk/src/start/name.dart';
import 'package:flutter/material.dart';

class MyAppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FaciliTalk',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NameScreen(name1: ''));
  }
}
