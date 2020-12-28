import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unsplash_photo/src/actions/index.dart';
import 'package:unsplash_photo/src/data/unsplash_api.dart';
import 'package:unsplash_photo/src/models/index.dart';

class AppEpics {
  const AppEpics({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotoStart>(_getPhotoStart),
      TypedEpic<AppState, GetPhotoStartRandom>(_getPhotoStartRandom),
    ]);
  }

  Stream<dynamic> _getPhotoStart(Stream<GetPhotoStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotoStart event) async => await _unsplashApi.getPhotoRandom(
              orientation: store.state.orientation,
              count: store.state.count,
              contentFilter: store.state.contentFilter,
            ))
        .map((List<Photo> event) => GetPhoto.successful(event))
        .onErrorReturnWith((dynamic error) => GetPhoto.error(error));
  }

  Stream<dynamic> _getPhotoStartRandom(Stream<GetPhotoStartRandom> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotoStartRandom event) async => await _unsplashApi.getPhotoRandom(
              orientation: store.state.orientation,
              count: store.state.count,
              contentFilter: store.state.contentFilter,
            ))
        .map((List<Photo> event) => GetPhoto.successfulRandom(event))
        .onErrorReturnWith((dynamic error) => GetPhoto.errorRandom(error));
  }
}
