import 'package:flutter/material.dart';
import 'home_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do dia',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: HomeApp(),
    );
  }
}