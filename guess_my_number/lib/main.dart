import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homapage(),
    );
  }
}

class Homapage extends StatefulWidget {
  @override
  _HomapageState createState() => _HomapageState();
}

class _HomapageState extends State<Homapage> {
  int randomNumber;
  int myNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    randomNumber = Random().nextInt(100);
  }

  void submited(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess my number'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'I\'m thinking of a number between 1 and 100.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const Text(
            'It\'s your turn to guess my number!',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          if (myNumber != null) Text('You tried $myNumber\n Try harder'),
          Card(
            child: Column(
              children: <Widget>[
                const Text(
                  'Try a number!',
                  style: TextStyle(fontSize: 28),
                ),
                TextField(
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (String value) {
                    myNumber = int.parse(value);
                  },
                ),
                RaisedButton(
                  onPressed: () {
                  },
                  child: const Text('Guess'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
