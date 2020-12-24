import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:movie_with_redux/src/models/movie.dart';

class YtsApi {
  const YtsApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Movie>> getMovies({@required String quality, @required int page, @required List<String> genres, @required String orderBy}) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'yts.mx',
      pathSegments: <String>['api', 'v2', 'list_movies.json'],
      queryParameters: <String, String>{
        'limit': '10',
        'quality': quality,
        'page': '$page',
        if (genres.isNotEmpty) 'genre': genres.join(', '),
        if (orderBy != null) 'order_by': orderBy,
      },
    );

    final Response response = await _client.get(url);

    // Cum aflu daca a esuat requestul?

    final List<dynamic> loadedData = json.decode(response.body)['data']['movies'];
    return loadedData.map((dynamic json) => Movie.fromJson(json)).toList();
  }
}
