import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:movie_with_redux/src/actions/get_movies.dart';
import 'package:movie_with_redux/src/data/yts_api.dart';
import 'package:movie_with_redux/src/models/app_state.dart';
import 'package:movie_with_redux/src/models/movie.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getMoviesMiddleware,
    ];
  }

  Future<void> _getMoviesMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is! GetMoviesStart) {
      return;
    }
    try {
      final GetMoviesStart startAction = action as GetMoviesStart;
      final List<Movie> movies = await _ytsApi.getMovies(
        quality: store.state.quality,
        page: startAction.page,
        genres: store.state.genres.asList(),
        orderBy: store.state.orderBy,
      );
      final GetMoviesSuccessful successful = GetMoviesSuccessful(movies);
      store.dispatch(successful);
    } catch (err) {
      final GetMoviesError error = GetMoviesError(err);
      store.dispatch(error);
    }
  }
}
