// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.photos, this.isLoading, this.page, this.orderBy, this.photosRandom, this.orientation, this.count})
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
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc($jc(0, photos.hashCode), isLoading.hashCode), page.hashCode), orderBy.hashCode),
                photosRandom.hashCode),
            orientation.hashCode),
        count.hashCode));
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
          ..add('count', count))
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
              count: count);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
