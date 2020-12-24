library movie;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_with_redux/src/models/serializers.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {
  factory Movie([void Function(MovieBuilder b) updates]) = _$Movie;

  factory Movie.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Movie._();

  String get url;

  String get title;

  int get year;

  String get summary;

  @BuiltValueField(wireName: 'medium_cover_image')
  String get mediumCoverImage;

  BuiltList<String> get genres;

  static Serializer<Movie> get serializer => _$movieSerializer;
}
