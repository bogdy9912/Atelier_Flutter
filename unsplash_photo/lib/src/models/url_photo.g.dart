// GENERATED CODE - DO NOT MODIFY BY HAND

part of url_photo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UrlPhoto> _$urlPhotoSerializer = new _$UrlPhotoSerializer();

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
