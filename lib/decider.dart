import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

Random rnd = new Random();
int number = rnd.nextInt(4)+1;
String checker(int number) {
  String noss = number.toString();
  String ans = "q" + noss;
  return ans;
}

class finalDecider extends StatelessWidget {
  var list = [
    "placeholder",
    "You are Melina. Make up and drama is your middle name.",
    "You are Brad. Your motto is: \"NO DRIP = NO CHICKS\".",
    "You are Robert. You mean business. MONEY TALKS",
    "You are James. The sharpest shooter on the block. \"Dont walk this way foo\".",
    "You are José. \"Ball is love. Ball is life\"."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/monkey$number.jpg'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              list[number],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(onPressed: () {
            SystemNavigator.pop();
          },
          color: Colors.red,
          child: Text("Exit"),
          )
        ],
      ),
    );
  }
}
