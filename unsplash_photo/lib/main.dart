import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:unsplash_photo/src/actions/index.dart';
import 'package:unsplash_photo/src/app_epics/app_epics.dart';
import 'package:unsplash_photo/src/data/unsplash_api.dart';
import 'package:unsplash_photo/src/models/index.dart';
import 'package:unsplash_photo/src/presentations/home_page.dart';
import 'package:unsplash_photo/src/presentations/random_photo_screen.dart';
import 'package:unsplash_photo/src/reducer/reducer.dart';

void main() {
  final Client _client = Client();
  final UnsplashApi api = UnsplashApi(client: _client);
  final AppEpics epics = AppEpics(unsplashApi: api);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  );
  store.dispatch(const GetPhoto.start(1));
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
        routes: <String, Widget Function(BuildContext)>{
          HomePage.routeName: (BuildContext ctx) => HomePage(),
          RandomPhotoScreen.nameRoute: (BuildContext ctx) => RandomPhotoScreen(),
        },
      ),
    );
  }
}
