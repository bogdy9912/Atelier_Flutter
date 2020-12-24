// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_quality;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetQualityTearOff {
  const _$SetQualityTearOff();

// ignore: unused_element
  Quality call(String quality) {
    return Quality(
      quality,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetQuality = _$SetQualityTearOff();

/// @nodoc
mixin _$SetQuality {
  String get quality;

  $SetQualityCopyWith<SetQuality> get copyWith;
}

/// @nodoc
abstract class $SetQualityCopyWith<$Res> {
  factory $SetQualityCopyWith(SetQuality value, $Res Function(SetQuality) then) = _$SetQualityCopyWithImpl<$Res>;
  $Res call({String quality});
}

/// @nodoc
class _$SetQualityCopyWithImpl<$Res> implements $SetQualityCopyWith<$Res> {
  _$SetQualityCopyWithImpl(this._value, this._then);

  final SetQuality _value;
  // ignore: unused_field
  final $Res Function(SetQuality) _then;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_value.copyWith(
      quality: quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
abstract class $QualityCopyWith<$Res> implements $SetQualityCopyWith<$Res> {
  factory $QualityCopyWith(Quality value, $Res Function(Quality) then) = _$QualityCopyWithImpl<$Res>;
  @override
  $Res call({String quality});
}

/// @nodoc
class _$QualityCopyWithImpl<$Res> extends _$SetQualityCopyWithImpl<$Res> implements $QualityCopyWith<$Res> {
  _$QualityCopyWithImpl(Quality _value, $Res Function(Quality) _then) : super(_value, (v) => _then(v as Quality));

  @override
  Quality get _value => super._value as Quality;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(Quality(
      quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
class _$Quality implements Quality {
  const _$Quality(this.quality) : assert(quality != null);

  @override
  final String quality;

  @override
  String toString() {
    return 'SetQuality(quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Quality &&
            (identical(other.quality, quality) || const DeepCollectionEquality().equals(other.quality, quality)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(quality);

  @override
  $QualityCopyWith<Quality> get copyWith => _$QualityCopyWithImpl<Quality>(this, _$identity);
}

abstract class Quality implements SetQuality {
  const factory Quality(String quality) = _$Quality;

  @override
  String get quality;
  @override
  $QualityCopyWith<Quality> get copyWith;
}
