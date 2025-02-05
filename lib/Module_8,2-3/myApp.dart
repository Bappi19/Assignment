import 'package:flutter/material.dart';
import 'package:practice_app/Assignment/main.dart';
import 'Home.dart';
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white70,
      ),
      title: 'app',
          home: Home(),
    );
  }
}