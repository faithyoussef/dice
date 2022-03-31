import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 4;
  int thirdDiceNumber = 1;
  int fifthDiceNumber = 6;
  int tenthDiceNumber = 8;
  void changeDiceFace() {
    setState(() {
      firstDiceNumber = Random().nextInt(7) + 1;
      thirdDiceNumber = Random().nextInt(3) + 1;
      fifthDiceNumber = Random().nextInt(4) + 1;
      tenthDiceNumber = Random().nextInt(1) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$firstDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$thirdDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$fifthDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$tenthDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}