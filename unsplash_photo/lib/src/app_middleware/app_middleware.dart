import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:unsplash_photo/src/actions/get_photo.dart';
import 'package:unsplash_photo/src/data/unsplash_api.dart';
import 'package:unsplash_photo/src/models/app_state.dart';
import 'package:unsplash_photo/src/models/photo.dart';

class AppMiddleware {
  const AppMiddleware({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getPhotoMiddleware,
    ];
  }

  Future<void> _getPhotoMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is GetPhotoStart) {
      try {
        final GetPhotoStart startAction = action;
        final List<Photo> photos =
            await _unsplashApi.getPhotos(page: startAction.page, perPage: 30, orderBy: store.state.orderBy);
        final GetPhotoSuccessful successful = GetPhoto.successful(photos);
        store.dispatch(successful);
      } catch (err) {
        final GetPhotoError error = GetPhotoError(err);
        store.dispatch(error);
      }
    } else if (action is GetPhotoStartRandom) {
      try {
        final List<Photo> photoRandom = await _unsplashApi.getPhotoRandom(
            orientation: store.state.orientation, count: store.state.count, contentFilter: store.state.contentFilter);
        final GetPhotoSuccessfulRandom successfulRandom = GetPhotoSuccessfulRandom(photoRandom);
        store.dispatch(successfulRandom);
      } catch (err) {
        final GetPhotoErrorRandom errorRandom = GetPhotoErrorRandom(err);
        store.dispatch(errorRandom);
      }
    }
  }
}
