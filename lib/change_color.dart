import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  final List<Color> colors = [
    Colors.cyan,
    Colors.amberAccent,
    Colors.deepOrangeAccent,
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change coloor'),
        backgroundColor: colors[currentIndex],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = (currentIndex + 1) % colors.length;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 0 ),
            width: 200,
            height: 200,
            color: colors[currentIndex],
          ),
        ),
      ),
    );
  }
}
