import 'package:flutter/material.dart';
import 'package:flutter_application_2/nav.dart';
import 'home.dart';
import 'change_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/change_color': (context) => ChangeColor(),
        '/nav': (context) => Nav(),
      },
    );
  }
}
