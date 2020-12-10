import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  final List<String> _flags = <String>[];
  final List<String> _names = <String>[];

  Future<void> getDataFromInternet() async {
    final http.Response response = await http.get('https://www.worldometers.info/geography/flags-of-the-world/');
    final String data = response.body;
    final List<String> parts = data.split('<a href="/img/flags/').skip(1).toList();

    for (final String part in parts) {
      final String _flag = part.split('">')[0];
      final String name = part.split('10px">')[1].split('</div')[0];
      _flags.add('https://www.worldometers.info/img/flags/$_flag');
      _names.add(name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flags'),
        centerTitle: true,
      ),
      body: FutureBuilder<void>(
          future: getDataFromInternet(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> _) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: _names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Expanded(
                          child: Image.network(
                        _flags[index],
                        fit: BoxFit.cover,
                      )),
                      Text(_names[index]),
                    ],
                  );
                },
              ),
            );
          }),
    );
  }
}
