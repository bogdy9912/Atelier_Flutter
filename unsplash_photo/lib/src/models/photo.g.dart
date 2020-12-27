// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object> serialize(Serializers serializers, Photo object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.urlPhoto != null) {
      result..add('urls')..add(serializers.serialize(object.urlPhoto, specifiedType: const FullType(UrlPhoto)));
    }
    if (object.altDescription != null) {
      result
        ..add('alt_description')
        ..add(serializers.serialize(object.altDescription, specifiedType: const FullType(String)));
    }
    if (object.likes != null) {
      result..add('likes')..add(serializers.serialize(object.likes, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'urls':
          result.urlPhoto.replace(serializers.deserialize(value, specifiedType: const FullType(UrlPhoto)) as UrlPhoto);
          break;
        case 'alt_description':
          result.altDescription = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Photo extends Photo {
  @override
  final UrlPhoto urlPhoto;
  @override
  final String altDescription;
  @override
  final int likes;

  factory _$Photo([void Function(PhotoBuilder) updates]) => (new PhotoBuilder()..update(updates)).build();

  _$Photo._({this.urlPhoto, this.altDescription, this.likes}) : super._();

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        urlPhoto == other.urlPhoto &&
        altDescription == other.altDescription &&
        likes == other.likes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, urlPhoto.hashCode), altDescription.hashCode), likes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('urlPhoto', urlPhoto)
          ..add('altDescription', altDescription)
          ..add('likes', likes))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  UrlPhotoBuilder _urlPhoto;
  UrlPhotoBuilder get urlPhoto => _$this._urlPhoto ??= new UrlPhotoBuilder();
  set urlPhoto(UrlPhotoBuilder urlPhoto) => _$this._urlPhoto = urlPhoto;

  String _altDescription;
  String get altDescription => _$this._altDescription;
  set altDescription(String altDescription) => _$this._altDescription = altDescription;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  PhotoBuilder();

  PhotoBuilder get _$this {
    if (_$v != null) {
      _urlPhoto = _$v.urlPhoto?.toBuilder();
      _altDescription = _$v.altDescription;
      _likes = _$v.likes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ?? new _$Photo._(urlPhoto: _urlPhoto?.build(), altDescription: altDescription, likes: likes);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urlPhoto';
        _urlPhoto?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
