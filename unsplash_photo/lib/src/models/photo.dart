part of 'index.dart';

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
