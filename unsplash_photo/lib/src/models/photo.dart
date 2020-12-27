library photo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:unsplash_photo/src/models/url_photo.dart';
import '../models/serializers.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder b) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Photo._();

  @nullable
  @BuiltValueField(wireName: 'urls')
  UrlPhoto get urlPhoto;

  @nullable
  @BuiltValueField(wireName: 'alt_description')
  String get altDescription;

  @nullable
  int get likes;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
