import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_with_redux/src/models/app_state.dart';
import 'package:movie_with_redux/src/models/movie.dart';
import 'package:redux/redux.dart';

class GetMovieContainer extends StatelessWidget {
  const GetMovieContainer({@required this.builder});

  final ViewModelBuilder<MovieUpdate> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MovieUpdate>(
      converter: (Store<AppState> store) {
        final AppState heaven = store.state;
        return MovieUpdate(
          movies: heaven.movies.asList(),
          isLoading: heaven.isLoading,
          quality: heaven.quality,
          genres: heaven.genres.asList(),
          orderBy: heaven.orderBy,
        );
      },
      builder: builder,
    );
  }
}

class MovieUpdate {
  MovieUpdate(
      {@required this.isLoading,
      @required this.movies,
      @required this.quality,
      @required this.genres,
      @required this.orderBy});

  List<Movie> movies;
  bool isLoading;
  String quality;
  List<String> genres;
  String orderBy;
}
