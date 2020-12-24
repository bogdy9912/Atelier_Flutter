import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_with_redux/src/actions/get_movies.dart';
import 'package:movie_with_redux/src/actions/order_by.dart';
import 'package:movie_with_redux/src/actions/set_genre.dart';
import 'package:movie_with_redux/src/actions/set_quality.dart';
import 'package:movie_with_redux/src/containers/get_movie_container.dart';
import 'package:movie_with_redux/src/models/app_state.dart';
import 'package:redux/redux.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMovieContainer(
      builder: (BuildContext context, MovieUpdate movieUpdate) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Movies'),
            actions: <Widget>[
              if (movieUpdate.orderBy == null)
                IconButton(
                    icon: const Icon(Icons.arrow_drop_down),
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                        ..dispatch(const OrderBy('asc'))
                        ..dispatch(const GetMoviesStart(1));
                    })
              else
                IconButton(
                    icon: const Icon(Icons.arrow_drop_up),
                    onPressed: () {
                      print(StoreProvider.of<AppState>(context).state.orderBy);
                      StoreProvider.of<AppState>(context)
                        ..dispatch(const OrderBy(null))
                        ..dispatch(const GetMoviesStart(1));
                    })
            ],
          ),
          body: movieUpdate.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: <Widget>[
                    Wrap(
                      children: <String>[
                        'Comedy',
                        'Sci-Fi',
                        'Horror',
                        'Romance',
                        'Action',
                        'Thriller',
                        'Drama',
                        'Mystery',
                        'Crime',
                        'Animation',
                        'Adventure',
                        'Fantasy',
                        'Comedy-Romance',
                        'Action-Comedy',
                        'Superhero',
                      ].map(
                        (String e) {
                          return ChoiceChip(
                            label: Text(e),
                            selected: movieUpdate.genres.contains(e),
                            onSelected: (bool isSelected) {
                              final Store<AppState> store = StoreProvider.of<AppState>(context);
                              if (isSelected) {
                                store
                                  ..dispatch(SetGenre.concat(e))
                                  ..dispatch(SetGenreStart(store.state.genres.asList()))
                                  ..dispatch(const GetMoviesStart(1));
//                                store..dispatch(SetGenreStart(<String>[e]))..dispatch(const GetMoviesStart(1));
                              } else {
                                //e intentionat aici
                                store..dispatch(const SetGenreStart(<String>[]))..dispatch(const GetMoviesStart(1));
                              }
                            },
                          );
                        },
                      ).toList(),
                    ),
                    DropdownButton<String>(
                      value: movieUpdate.quality,
                      items: <String>['All', '720p', '1080p', '2160p', '3D']
                          .map(
                            (String e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context)
                          ..dispatch(Quality(value))
                          ..dispatch(const GetMovies.start(1));
                      },
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.all(8.0).copyWith(bottom: 56.0),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemCount: movieUpdate.movies.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GridTile(
                            child: Image.network(movieUpdate.movies[index].mediumCoverImage),
                            footer: GridTileBar(
                              title: Text(movieUpdate.movies[index].title),
                            ),
                          );
                        },
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        final Store<AppState> store = StoreProvider.of<AppState>(context);
                        store.dispatch(GetMoviesStart(store.state.page));
                      },
                      child: const Text('Load More'),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
