import 'dart:math';
import 'package:flutter/material.dart';

void main() {
   runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdicenumber=1;
  int rightdicenumber=1;
  void diceface(){
    leftdicenumber=Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text("Diceee")),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceface();
                  });
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
              ),
              Expanded(child: FlatButton(
                  onPressed: () {
                    setState(() {
                      diceface();
                    });
                  },
                  child: Image.asset('images/dice$rightdicenumber.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




