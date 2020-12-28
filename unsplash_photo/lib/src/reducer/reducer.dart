import 'package:redux/redux.dart';
import 'package:unsplash_photo/src/actions/index.dart';
import 'package:unsplash_photo/src/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetPhotoStart>(_getPhotoStart),
  TypedReducer<AppState, GetPhotoSuccessful>(_getPhotoSuccessful),
  TypedReducer<AppState, GetPhotoError>(_getPhotoError),
  TypedReducer<AppState, GetPhotoStartRandom>(_getPhotoStartRandom),
  TypedReducer<AppState, GetPhotoSuccessfulRandom>(_getPhotoSuccessfulRandom),
  TypedReducer<AppState, GetPhotoErrorRandom>(_getPhotoErrorRandom),
  TypedReducer<AppState, SetOrderBy>(_setOrderBy),
  TypedReducer<AppState, SetOrientation>(_setOrientation),
  TypedReducer<AppState, SetCount>(_setCount),
  TypedReducer<AppState, SetOrientation>(_setOrientation),
  TypedReducer<AppState, SetContentFilter>(_setContentFilter),
]);

AppState _getPhotoStart(AppState state, GetPhotoStart action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = true;
  return builder.build();
}

AppState _getPhotoSuccessful(AppState state, GetPhotoSuccessful action) {
  final AppStateBuilder builder = state.toBuilder();
  builder
    ..isLoading = false
    ..photos.addAll(action.photos)
    ..page = builder.page + 1;
  return builder.build();
}

AppState _getPhotoError(AppState state, GetPhotoError action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = false;
  return builder.build();
}

AppState _getPhotoStartRandom(AppState state, GetPhotoStartRandom action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = true;
  return builder.build();
}

AppState _getPhotoSuccessfulRandom(AppState state, GetPhotoSuccessfulRandom action) {
  final AppStateBuilder builder = state.toBuilder();
  builder
    ..isLoading = false
    ..photosRandom.replace(action.photosRandom);
  return builder.build();
}

AppState _getPhotoErrorRandom(AppState state, GetPhotoErrorRandom action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = false;
  return builder.build();
}

AppState _setOrderBy(AppState state, SetOrderBy action) {
  final AppStateBuilder builder = state.toBuilder();
  builder
    ..orderBy = action.order
    ..photos.clear();
  return builder.build();
}

AppState _setOrientation(AppState state, SetOrientation action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.orientation = action.orientation;
  return builder.build();
}

AppState _setCount(AppState state, SetCount action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.count = action.count;
  return builder.build();
}

AppState _setContentFilter(AppState state, SetContentFilter action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.contentFilter = action.filter;
  return builder.build();
}
