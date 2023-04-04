import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random random = Random();
  static const int maxNumber = 255;
  static const double opacity = 10;
  //assigned 255 to red, blue and green to begin screen with background white
  int red = maxNumber;
  int blue = maxNumber;
  int green = maxNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(red, blue , blue, opacity),
      body: InkWell(
        onTap: changeColor,
        child: const Center(
          child: Text(
              'Hello There',
              style: TextStyle(
                fontSize: 25,
              ),
          ),
        ),
      ),
    );
  }

  void changeColor()
  {
    setState(() {
      red = random.nextInt(maxNumber);
      blue = random.nextInt(maxNumber);
      green = random.nextInt(maxNumber);
    });
  }
}
