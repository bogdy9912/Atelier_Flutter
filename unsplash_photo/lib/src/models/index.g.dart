// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();
Serializer<UrlPhoto> _$urlPhotoSerializer = new _$UrlPhotoSerializer();

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

class _$UrlPhotoSerializer implements StructuredSerializer<UrlPhoto> {
  @override
  final Iterable<Type> types = const [UrlPhoto, _$UrlPhoto];
  @override
  final String wireName = 'UrlPhoto';

  @override
  Iterable<Object> serialize(Serializers serializers, UrlPhoto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'regular',
      serializers.serialize(object.regular, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UrlPhoto deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlPhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'regular':
          result.regular = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Photo> photos;
  @override
  final bool isLoading;
  @override
  final int page;
  @override
  final String orderBy;
  @override
  final BuiltList<Photo> photosRandom;
  @override
  final String orientation;
  @override
  final int count;
  @override
  final String contentFilter;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.photos,
      this.isLoading,
      this.page,
      this.orderBy,
      this.photosRandom,
      this.orientation,
      this.count,
      this.contentFilter})
      : super._() {
    if (photos == null) {
      throw new BuiltValueNullFieldError('AppState', 'photos');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('AppState', 'page');
    }
    if (orderBy == null) {
      throw new BuiltValueNullFieldError('AppState', 'orderBy');
    }
    if (photosRandom == null) {
      throw new BuiltValueNullFieldError('AppState', 'photosRandom');
    }
    if (count == null) {
      throw new BuiltValueNullFieldError('AppState', 'count');
    }
    if (contentFilter == null) {
      throw new BuiltValueNullFieldError('AppState', 'contentFilter');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        photos == other.photos &&
        isLoading == other.isLoading &&
        page == other.page &&
        orderBy == other.orderBy &&
        photosRandom == other.photosRandom &&
        orientation == other.orientation &&
        count == other.count &&
        contentFilter == other.contentFilter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc($jc(0, photos.hashCode), isLoading.hashCode), page.hashCode), orderBy.hashCode),
                    photosRandom.hashCode),
                orientation.hashCode),
            count.hashCode),
        contentFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('photos', photos)
          ..add('isLoading', isLoading)
          ..add('page', page)
          ..add('orderBy', orderBy)
          ..add('photosRandom', photosRandom)
          ..add('orientation', orientation)
          ..add('count', count)
          ..add('contentFilter', contentFilter))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  String _orderBy;
  String get orderBy => _$this._orderBy;
  set orderBy(String orderBy) => _$this._orderBy = orderBy;

  ListBuilder<Photo> _photosRandom;
  ListBuilder<Photo> get photosRandom => _$this._photosRandom ??= new ListBuilder<Photo>();
  set photosRandom(ListBuilder<Photo> photosRandom) => _$this._photosRandom = photosRandom;

  String _orientation;
  String get orientation => _$this._orientation;
  set orientation(String orientation) => _$this._orientation = orientation;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  String _contentFilter;
  String get contentFilter => _$this._contentFilter;
  set contentFilter(String contentFilter) => _$this._contentFilter = contentFilter;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _photos = _$v.photos?.toBuilder();
      _isLoading = _$v.isLoading;
      _page = _$v.page;
      _orderBy = _$v.orderBy;
      _photosRandom = _$v.photosRandom?.toBuilder();
      _orientation = _$v.orientation;
      _count = _$v.count;
      _contentFilter = _$v.contentFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              photos: photos.build(),
              isLoading: isLoading,
              page: page,
              orderBy: orderBy,
              photosRandom: photosRandom.build(),
              orientation: orientation,
              count: count,
              contentFilter: contentFilter);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        photos.build();

        _$failedField = 'photosRandom';
        photosRandom.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
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

class _$UrlPhoto extends UrlPhoto {
  @override
  final String regular;

  factory _$UrlPhoto([void Function(UrlPhotoBuilder) updates]) => (new UrlPhotoBuilder()..update(updates)).build();

  _$UrlPhoto._({this.regular}) : super._() {
    if (regular == null) {
      throw new BuiltValueNullFieldError('UrlPhoto', 'regular');
    }
  }

  @override
  UrlPhoto rebuild(void Function(UrlPhotoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UrlPhotoBuilder toBuilder() => new UrlPhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UrlPhoto && regular == other.regular;
  }

  @override
  int get hashCode {
    return $jf($jc(0, regular.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UrlPhoto')..add('regular', regular)).toString();
  }
}

class UrlPhotoBuilder implements Builder<UrlPhoto, UrlPhotoBuilder> {
  _$UrlPhoto _$v;

  String _regular;
  String get regular => _$this._regular;
  set regular(String regular) => _$this._regular = regular;

  UrlPhotoBuilder();

  UrlPhotoBuilder get _$this {
    if (_$v != null) {
      _regular = _$v.regular;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UrlPhoto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UrlPhoto;
  }

  @override
  void update(void Function(UrlPhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UrlPhoto build() {
    final _$result = _$v ?? new _$UrlPhoto._(regular: regular);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
