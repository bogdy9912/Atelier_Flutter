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
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController controller = TextEditingController();
  int myNumber;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool isSquare(int number) {
    if (sqrt(number) == sqrt(number).toInt()) {
      return true;
    }
    return false;
  }

  bool isCube(int number) {
    for (int i = 0; i <= sqrt(number); i++) {
      if (i * i * i == number) {
        return true;
      }
    }
    return false;
  }

  String result(int number) {
    if (isSquare(number) && isCube(number)) {
      return 'is both Square and Cube';
    } else {
      if (isSquare(number)) {
        return 'is Square';
      } else {
        if (isCube(number)) {
          return 'is Cube';
        }
      }
    }
    return 'is neither Cube or Square';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Number Shapes'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            const Text('Please input a number to see if it is square or cube'),
            TextFormField(
              controller: controller,
              keyboardType: const TextInputType.numberWithOptions(),
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Enter a value';
                }
                if (int.tryParse(value) == null) {
                  return 'Enter a valid number';
                }
                return null;
              },
              onSaved: (String value) {
                myNumber = int.tryParse(value);
              },
            ),
          ],
        ),
        floatingActionButton: Builder(builder: (BuildContext ctx) {
          return FloatingActionButton(
            onPressed: () async {
              final bool valid = Form.of(ctx).validate();
              if (valid) {
                Form.of(ctx).save();
                await showDialog<AlertDialog>(
                  context: ctx,
                  child: AlertDialog(
                    title: Text('$myNumber'),
                    content: Text('Number $myNumber ' + result(myNumber)),
                  ),
                );
              }
              setState(() {
                controller.clear();
              });
            },
            child: const Icon(Icons.check),
          );
        }),
      ),
    );
  }
}
