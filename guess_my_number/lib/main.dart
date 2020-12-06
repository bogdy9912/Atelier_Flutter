import 'dart:math';

import 'package:flutter/material.dart';
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
  String option;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    randomNumber = Random().nextInt(100);
    option = '';
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void reloadGuessing() {
    setState(() {
      controller.clear();
      myNumber = null;
      option = '';
      randomNumber = Random().nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess my number'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(12),
              child: const Text(
                'I\'m thinking of a number between 1 and 100.',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: const Text(
                'It\'s your turn to guess my number!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            if (myNumber != null)
              Text('You tried $myNumber\n $option',
                  textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey, fontSize: 35)),
            Card(
              margin: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 8, bottom: 12),
                      child: const Text(
                        'Try a number!',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    TextFormField(
                      controller: controller,
                      textInputAction: TextInputAction.done,
                      keyboardType: const TextInputType.numberWithOptions(),
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                      validator: (String value) {
                        if (value.isEmpty || value == null) {
                          return 'Please enter a value';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Please enter a number';
                        } else {
                          if (int.parse(value) < 1 || int.parse(value) > 100) {
                            return 'Please enter a value btw 1 and 100';
                          }
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        controller.text = value;
                      },
                    ),
                    Builder(builder: (BuildContext ctx) {
                      if (option != 'You guessed right') {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          child: RaisedButton(
                            onPressed: () {
                              final bool valid = Form.of(ctx).validate();
                              if (valid) {
                                Form.of(ctx).save();
                                setState(() {
                                  if (int.tryParse(controller.text) > randomNumber) {
                                    option = 'Try lower';
                                  } else {
                                    if (int.tryParse(controller.text) < randomNumber) {
                                      option = 'Try higher';
                                    } else {
                                      option = 'You guessed right';
                                    }
                                  }
                                  myNumber = int.tryParse(controller.text);
                                  controller.clear();
                                });
                              }
                              if (option == 'You guessed right') {
                                showDialog<Widget>(
                                    context: ctx,
                                    child: AlertDialog(
                                      title: Text(option),
                                      content: Text('It was $myNumber'),
                                      actions: <Widget>[
                                        FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            reloadGuessing();
                                          },
                                          child: const Text('Try again!'),
                                        ),
                                        FlatButton(
                                          onPressed: () => Navigator.of(context).pop(),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                              }
                            },
                            child: const Text('Guess'),
                          ),
                        );
                      } else {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          child: RaisedButton(
                            onPressed: reloadGuessing,
                            child: const Text('Reset'),
                          ),
                        );
                      }
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
