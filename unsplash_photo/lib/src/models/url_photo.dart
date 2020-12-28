part of 'index.dart';

abstract class UrlPhoto implements Built<UrlPhoto, UrlPhotoBuilder> {
  factory UrlPhoto([void Function(UrlPhotoBuilder b) updates]) = _$UrlPhoto;

  factory UrlPhoto.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  UrlPhoto._();

  String get regular;

  static Serializer<UrlPhoto> get serializer => _$urlPhotoSerializer;
}
