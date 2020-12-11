import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_time/movie_item.dart';

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
  List<dynamic> movies;
  Map<String, String> param = <String, String>{'sort_by': 'date_added'};
  final List<String> sortByParams = <String>[
    'title',
    'year',
    'rating',
    'peers',
    'seeds',
    'download_count',
    'like_count',
    'date_added',
  ];

  void _sortAlertDialog(BuildContext ctx) {
    showDialog<Widget>(
      context: ctx,
      builder: (BuildContext ctx) {
        return StatefulBuilder(
          builder: (BuildContext ctx, StateSetter setState) => AlertDialog(
            title: const Text(''),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Text('Sort by: '),
                    DropdownButton<String>(
                        value: param['sort_by'],
                        items: sortByParams.map((String e) {
                          print(e);
                          return DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          );
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            param['sort_by'] = newValue;
                          });
                        })
                  ],
                ),
                const Text('Filter: '),
              ],
            ),
          ),
        );
      },
    ).then((Widget value) {
      setState(() {});
    });
  }

  String _newUrl() {
    const String url = 'https://yts.mx/api/v2/list_movies.json?';
    String urlSegment = '';

    param.forEach((String key, String value) {
      if (value != null || value.isNotEmpty) {
        if (urlSegment.isNotEmpty) {
          urlSegment += '&';
        }
        urlSegment = urlSegment + key + '=' + value;
      }
    });
    return url + urlSegment;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movies'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.sort),
              onPressed: () {
                _sortAlertDialog(context);
              },
            ),
          ],
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
//                color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/images/fundal.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: FutureBuilder<void>(
              future: http.get(_newUrl()),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container();
                }
                final Map<String, dynamic> loadedData = json.decode(snapshot.data.body);

                movies = loadedData['data']['movies'];
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => MovieItem(
                    title: movies[index]['title'],
                    year: movies[index]['year'],
                    rating: double.tryParse(movies[index]['rating'].toString()),
                    imageUrl: movies[index]['medium_cover_image'],
                    summary: movies[index]['summary'],
                  ),
                );
              },
            )));
  }
}
