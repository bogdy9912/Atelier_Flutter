import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

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

class _HomePageState extends State<HomePage> {
  final List<List<String>> dummyData = <List<String>>[
    <String>['masina', ''],
    <String>['masina(Engleza)', ''],
    <String>['Marco', ''],
    <String>['Marco(Engleza)', ''],
    <String>['Maverick', ''],
    <String>['Maverick(TopGun)', ''],
    <String>['Silvester', ''],
    <String>['Silvester(Engleza)', ''],
    <String>['Depp', ''],
    <String>['Depp(Engleza)', ''],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 10,
        padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (BuildContext ctx, int index) {
            return GestureDetector(
              child: Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Text(dummyData[index][0], style: const TextStyle(color: Colors.white, fontSize: 16),),
              ),
              onTap: () {
                AudioPlayer audioPlayer = AudioPlayer();
                audioPlayer.play('', isLocal: true);
              },
            );
          }),
    );
  }
}
