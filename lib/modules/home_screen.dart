import 'dart:math';


import 'package:flutter/material.dart';

Random random = Random();

class HomeScreen extends StatefulWidget {
  HomeScreen(this.mainColor, this.secColor, {super.key});

  final Color mainColor;
  final Color secColor;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeNum = 0;

  List<String> images = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          widget.mainColor,
          widget.secColor,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            images[activeNum],
            width: 200,
          ),
           Padding(
            padding: const EdgeInsets.all(60.0),
            child:  TextButton(
              onPressed: (){
                setState(() {
                  activeNum = random.nextInt(6);
                });

              },
              child: const Icon(Icons.pan_tool_alt),
            ),
          ),
        ],
      )),
    );
  }
}

void rollDice() {}
