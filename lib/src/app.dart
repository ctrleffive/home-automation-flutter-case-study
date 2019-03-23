import 'package:automation/src/ui/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        brightness: Brightness.dark
      ),
      home: Home(),
    );
  }
}