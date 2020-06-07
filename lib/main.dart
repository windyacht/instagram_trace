import 'package:flutter/material.dart';
import 'package:instagramtrace/app.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstagramTRACE',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: App(title: 'Instagram'),
    );
  }
}