library url_photo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:unsplash_photo/src/models/serializers.dart';

part 'url_photo.g.dart';

abstract class UrlPhoto implements Built<UrlPhoto, UrlPhotoBuilder> {
  factory UrlPhoto([void Function(UrlPhotoBuilder b) updates]) = _$UrlPhoto;

  factory UrlPhoto.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  UrlPhoto._();

  String get regular;

  static Serializer<UrlPhoto> get serializer => _$urlPhotoSerializer;
}
