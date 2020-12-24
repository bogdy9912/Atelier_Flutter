import 'package:built_collection/built_collection.dart';
import 'package:movie_with_redux/src/actions/get_movies.dart';
import 'package:movie_with_redux/src/actions/order_by.dart';
import 'package:movie_with_redux/src/actions/set_genre.dart';
import 'package:movie_with_redux/src/actions/set_quality.dart';
import 'package:movie_with_redux/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetMoviesStart) {
    builder.isLoading = true;
//    builder.movies.clear();
  } else if (action is GetMoviesSuccessful) {
    builder
      ..movies.addAll(action.movies)
      ..isLoading = false
      ..page = builder.page + 1;
  } else if (action is GetMoviesError) {
    builder.isLoading = false;
  } else if (action is Quality) {
    builder
      ..quality = action.quality
      ..movies.clear();
  } else if (action is SetGenreStart) {
    builder
      ..genres = ListBuilder<String>(action.genres)
      ..movies.clear();
  } else if (action is SetGenreConcat) {
    builder.genres.add(action.genre);
  } else if (action is OrderBy) {
    builder
      ..orderBy = action.order
      ..movies.clear();
  }

  return builder.build();
}
