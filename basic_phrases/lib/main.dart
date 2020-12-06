import 'package:assets_audio_player/assets_audio_player.dart';
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

class _HomePageState extends State<HomePage> {
  final List<List<String>> dummyData = <List<String>>[
    <String>['masina', 'assets/audio/masina.mp3'],
    <String>['masina(Engleza)', 'assets/audio/car.mp3'],
    <String>['Marco', 'assets/audio/Marco.mp3'],
    <String>['Polo', 'assets/audio/Polo.mp3'],
    <String>['Maverick', 'assets/audio/Maverick.mp3'],
    <String>['Goose', 'assets/audio/goose.mp3'],
    <String>['Silvester', 'assets/audio/Silvester.mp3'],
    <String>['Stallone', 'assets/audio/Stallone.mp3'],
  ];

  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: dummyData.length,
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
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  dummyData[index][0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              onTap: () async {
                await assetsAudioPlayer.open(
                  Audio(dummyData[index][1]),
                );
                await assetsAudioPlayer.play();
              },
            );
          }),
    );
  }
}
