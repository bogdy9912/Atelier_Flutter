import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
  final http.Response response = await http.get('http://yts.mx/api/v2/list_movies.json');

  final Map<String, dynamic> responseData = json.decode(response.body) as Map<String, dynamic>;
//  print(data['data']['movies']);

  final Map<String, dynamic> data = responseData['data'];
  final List<dynamic> movies = data['movies'];
  final List<Movie> moviesList = <Movie>[];

  responseData['data']['movies'].forEach((dynamic e) {
    moviesList.add(
      Movie(id: e['id'], title: e['title'], cover: e['medium_cover_image'], year: e['year']),
    );
  });
  print(moviesList[0]);

  final List<Movie> moviesL = movies.map((dynamic e) => Movie(title: e['title'])).toList();
  print(moviesL[0].title);
}

class Movie {
  Movie({
    this.id,
    this.title,
    this.url,
    this.year,
    this.cover,
  });

  factory Movie.fromJson(dynamic e) {
    return Movie(id: e['id'], title: e['title'], cover: e['medium_cover_image'], year: e['year']);
  }

  final String title;
  final int id;
  final String url;
  final int year;
  final String cover;

  @override
  String toString() {
    return 'Movie{ id: $id,title: $title, url: $url, year: $year, cover: $cover}';
  }
}
