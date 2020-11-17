import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String errMessage;
  String amount;
  bool show;

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s, (_) => null) != null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Currency converter',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(
                'https://cdn.pixabay.com/photo/2014/11/04/20/21/dollar-517113_1280.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'enter the amount in euro',
                  errorText: errMessage,
                ),
                onChanged: (String value) {
                  if (!isNumeric(value)) {
                    amount = null;
                  }
                  amount = (double.parse(value) * 4.5).toStringAsFixed(2);
                  if (double.parse(value) < 0)
                    print('Now you own us ${double.parse(value)}');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  if (amount == null)
                    errMessage = 'Please introduce a valid number';
                  else
                    errMessage = null;
                  setState(() {
                    print(amount);
                  });
                },
                child: Text(
                  'convert'.toUpperCase(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              if (amount != null)
                Text(
                  amount,
                  style: const TextStyle(fontSize: 20.0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
