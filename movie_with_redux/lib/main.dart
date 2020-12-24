import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:movie_with_redux/src/actions/get_movies.dart';
import 'package:movie_with_redux/src/data/yts_api.dart';
import 'package:movie_with_redux/src/middleware/app_middleware.dart';
import 'package:movie_with_redux/src/models/app_state.dart';
import 'package:movie_with_redux/src/presentations/home_page.dart';
import 'package:movie_with_redux/src/reducer/reducer.dart';
import 'package:redux/redux.dart';

void main() {
  final Client _client = Client();
  final YtsApi _ytsApi = YtsApi(client: _client);
  final AppMiddleware appMiddleware = AppMiddleware(ytsApi: _ytsApi);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: appMiddleware.middleware,
  );

  store.dispatch(const GetMoviesStart(1));

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({@required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
