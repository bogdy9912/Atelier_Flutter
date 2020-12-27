library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:unsplash_photo/src/models/photo.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState(
      (AppStateBuilder b) {
        b
          ..isLoading = false
          ..page = 1
          ..orderBy = 'latest'
          ..count = 1
          ..contentFilter = 'low';
      },
    );
  }

  AppState._();

  BuiltList<Photo> get photos;

  bool get isLoading;

  int get page;

  String get orderBy;

  BuiltList<Photo> get photosRandom;

  @nullable
  String get orientation;

  int get count;

  @BuiltValueField(wireName: 'content_filter')
  String get contentFilter;
}
