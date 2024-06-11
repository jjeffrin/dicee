import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceeApp());
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({super.key});

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  Random randomNumGenerator = Random();
  int leftDiceCount = 1;
  int rightDiceCount = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceCount = randomNumGenerator.nextInt(6) + 1;
      rightDiceCount = randomNumGenerator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () => {
                          changeDiceFace()
                        },
                    child: Image.asset('images/dice$leftDiceCount.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () => {
                          changeDiceFace()
                        },
                    child: Image.asset('images/dice$rightDiceCount.png')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
