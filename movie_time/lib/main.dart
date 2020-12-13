import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(
        focusColor: Colors.deepOrange,
        primaryColor: Colors.deepOrange,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> movies;
  Map<String, String> param = <String, String>{
    'sort_by': 'date_added',
    'order_by': 'desc',
    'quality': 'all',
    'genre': 'all',
    'minimum_rating': '0',
    'query_term': '',
  };
  final List<String> qualityParams = <String>[
    '720p',
    '1080p',
    '2160p',
    '3D',
    'all',
  ];
  final List<String> ratingParams = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  final List<String> genreParams = <String>[
    'comedy',
    'sci-fi',
    'romance',
    'action',
    'drama',
    'fantasy',
    'superhero',
    'crime',
    'all',
  ];
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

  Widget dropWidget({StateSetter setState, String name, List<String> itemsList, String keyName}) {
    return Row(
      children: <Widget>[
        Text('$name: '),
        DropdownButton<String>(
            value: param[keyName],
            items: itemsList.map((String e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              );
            }).toList(),
            onChanged: (String newValue) {
              setState(() {
                param[keyName] = newValue;
              });
            }),
      ],
    );
  }

  void _sortAlertDialog(BuildContext ctx) {
    showDialog<Widget>(
      context: ctx,
      builder: (BuildContext ctx) {
        return StatefulBuilder(
          builder: (BuildContext ctx, StateSetter setState) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Sort',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                dropWidget(
                  setState: setState,
                  name: 'Sort by',
                  keyName: 'sort_by',
                  itemsList: sortByParams,
                ),
                const Text('Order by: '),
                Column(
                  children: <Widget>[
                    RadioListTile<String>(
                      value: 'asc',
                      title: const Text('asc'),
                      groupValue: param['order_by'],
                      onChanged: (String value) {
                        setState(() {
                          param['order_by'] = value;
                        });
                      },
                    ),
                    RadioListTile<String>(
                      value: 'desc',
                      title: const Text('desc'),
                      groupValue: param['order_by'],
                      onChanged: (String value) {
                        setState(() {
                          param['order_by'] = value;
                        });
                      },
                    ),
                  ],
                ),
                const Text(
                  'Filter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                dropWidget(
                  setState: setState,
                  name: 'Quality',
                  keyName: 'quality',
                  itemsList: qualityParams,
                ),
                dropWidget(
                  setState: setState,
                  name: 'Minimum rating',
                  keyName: 'minimum_rating',
                  itemsList: ratingParams,
                ),
                dropWidget(
                  setState: setState,
                  name: 'Genre',
                  keyName: 'genre',
                  itemsList: genreParams,
                ),
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

  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: 150,
          child: TextField(
            style: const TextStyle(color: Colors.deepOrange),
            cursorColor: Colors.deepOrange,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.deepOrange,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.deepOrange,
              ),
              hintText: 'Movies',
              hintStyle: TextStyle(
                color: Colors.deepOrange,
              ),
              focusColor: Colors.deepOrange,
            ),
            onSubmitted: (String value) {
              setState(() {
                param['query_term'] = value;
              });
            },
            onChanged: (String value) {
              if (_timer != null) {
                _timer.cancel();
              }
              _timer = Timer(
                const Duration(seconds: 2),
                () {
                  setState(() {
                    print('aici');
                    param['query_term'] = value;
                  });
                },
              );
            },
          ),
        ),
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
              return ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) => Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      height: 352,
                      width: 232,
                      child: Image.asset(
                        'assets/images/placeholder.jpg',
                        width: 234,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }
            final Map<String, dynamic> loadedData = json.decode(snapshot.data.body);

            movies = loadedData['data']['movies'];
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) => MovieItem(
                title: movies[index]['title'],
                year: movies[index]['year'],
                rating: double.tryParse(movies[index]['rating'].toString()),
                imageUrl: movies[index]['medium_cover_image'],
                summary: movies[index]['summary'],
                urlDownload: movies[index]['url'],
              ),
            );
          },
        ),
      ),
    );
  }
}
