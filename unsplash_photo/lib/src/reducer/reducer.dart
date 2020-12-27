import 'package:unsplash_photo/src/actions/get_photo.dart';
import 'package:unsplash_photo/src/actions/random/set_count.dart';

import 'package:unsplash_photo/src/actions/random/set_orientation.dart';
import 'package:unsplash_photo/src/actions/set_order.dart';
import 'package:unsplash_photo/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();
  if ((action is GetPhotoStart) || (action is GetPhotoStartRandom)) {
    builder.isLoading = true;
  } else if (action is GetPhotoSuccessful) {
    builder
      ..photos.addAll(action.photos)
      ..isLoading = false
      ..page = builder.page + 1;
  } else if ((action is GetPhotoError) || (action is GetPhotoStartRandom)) {
    builder.isLoading = false;
  } else if (action is SetOrderBy) {
    builder
      ..orderBy = action.order
      ..photos.clear();
  } else if (action is GetPhotoSuccessfulRandom) {
    builder
      ..photosRandom.replace(action.photosRandom)
      ..photos.clear()
      ..isLoading = false;
  } else if (action is SetOrientation) {
    builder.orientation = action.orientation;
  } else if (action is SetCount) {
    builder.count = action.count;
  }

  return builder.build();
}
