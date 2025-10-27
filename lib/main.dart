import 'package:flutter/material.dart';
import 'home.dart';
import 'product.dart';
import 'Developer.dart';
import 'art.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/product': (context) => Product(),
        '/Developer': (context) => Developer(),
        '/art': (context) => Art(),
      },
    );
  }
}
