import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum Player { one, two }
enum WhatColors { white, red, green }

class _HomePageState extends State<HomePage> {
  WhatColors color = WhatColors.white;
  Player player = Player.one;
  bool isDone = false;
  List<Color> isPressed = <Color>[
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tic-tac-toe'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext ctx, int index) {
                return GestureDetector(
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: isPressed[index],
                      border: Border.all(width: 1),
                    ),
                    duration: const Duration(milliseconds: 500),
                  ),
                  onTap: () {
                    setState(() {
                      if (player == Player.one) {
                        isPressed[index] = Colors.red;
                        player = Player.two;
                      } else {
                        isPressed[index] = Colors.green;
                        player = Player.one;
                      }
                      final List<List<int>> matrix = <List<int>>[
                        <int>[0, 0, 0, 0],
                        <int>[0, 0, 0, 0],
                        <int>[0, 0, 0, 0],
                        <int>[0, 0, 0, 0]
                      ];
                      for (int i = 0; i < 3; i++) {
                        final List<int> list = <int>[0, 0, 0, 0];
                        int sum = 0;
                        for (int j = i * 3; j < (i + 1) * 3; j++) {
                          list[j % 3] = isPressed[j] == Colors.red
                              ? 1
                              : isPressed[j] == Colors.green
                                  ? -1
                                  : 0;
                          sum += list[j % 3];
                        }
                        list[3] = sum;
                        matrix[i] = list;
//                        matrix[(i/3).truncate()][i%3] = isPressed[i] == Colors.red ? 1 : 5;
                      }
                      print(matrix);
                      final List<int> list2 = <int>[0, 0, 0];
                      int sumDiagP = 0;
                      int sumDiagS = 0;
                      for (int i = 0; i < 3; i++) {
                        int sum = 0;
                        sumDiagP += matrix[i][i];
                        sumDiagS += matrix[i][2 - i];
                        for (int j = 0; j < 3; j++) {
                          sum += matrix[j][i];
                        }
                        list2[i] = sum;
                      }
                      matrix[3] = list2;
                      print(matrix);
//                      matrix[3][3] = sumDiagP;
                      if (sumDiagS.abs() == 3) {
                        for (int i = 0; i < 9; i++) {
                          if (i != 2 && i != 4 && i != 6) {
                            isPressed[i] = Colors.white;
                          }
                        }
                        isDone = true;
                      }
                      if (sumDiagP.abs() == 3) {
                        for (int i = 0; i < 9; i++) {
                          if (i != 0 && i != 4 && i != 8) {
                            isPressed[i] = Colors.white;
                          }
                        }
                        isDone = true;
                      }
                      for (int k = 0; k < 3; k++) {
                        if (matrix[k][3].abs() == 3) {
                          for (int i = 0; i < 9; i++) {
                            if (i != 3 * k &&
                                i != 3 * k + 1 &&
                                i != 3 * k + 2) {
                              isPressed[i] = Colors.white;
                            }
                          }
                          isDone = true;
                        }
                      }

                      for (int k = 0; k < 3; k++) {
                        if (matrix[3][k].abs() == 3) {
                          for (int i = 0; i < 9; i++) {
                            if (i != k && i != k + 3 && i != k + 6) {
                              isPressed[i] = Colors.white;
                            }
                          }
                          isDone = true;
                        }
                      }
                      if (isDone == false) {
                        bool check = false;
                        for (int i = 0; i < 9; i++) {
                          if (isPressed[i] == Colors.white) {
                            check = true;
                          }
                        }
                        if (check == false) {
                          isDone = true;
                        }
                      }
                    });
                  },
                );
              },
            ),
          ),
          if (isDone)
            RaisedButton(
              onPressed: () {
                setState(() {
                  isPressed = <Color>[
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                  ];
                  isDone = false;
                  player = Player.one;
                });
              },
              child: const Text('Try again'),
            ),
        ],
      ),
    );
  }
}
