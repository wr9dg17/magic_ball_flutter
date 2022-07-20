import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask me anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: const MagicBallApp(),
      ),
    )
  );
}

class MagicBallApp extends StatefulWidget {
  const MagicBallApp({Key? key}) : super(key: key);

  @override
  State<MagicBallApp> createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  int ballNumber = 1;

  void randomizeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: randomizeBall,
          child: Image.asset('images/ball$ballNumber.png')
        )
      )
    );
  }
}
