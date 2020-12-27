// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_orientation;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetOrientationTearOff {
  const _$SetOrientationTearOff();

// ignore: unused_element
  SetOrientationStart call(@nullable String orientation) {
    return SetOrientationStart(
      orientation,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetOrientation = _$SetOrientationTearOff();

/// @nodoc
mixin _$SetOrientation {
  @nullable
  String get orientation;

  $SetOrientationCopyWith<SetOrientation> get copyWith;
}

/// @nodoc
abstract class $SetOrientationCopyWith<$Res> {
  factory $SetOrientationCopyWith(SetOrientation value, $Res Function(SetOrientation) then) =
      _$SetOrientationCopyWithImpl<$Res>;
  $Res call({@nullable String orientation});
}

/// @nodoc
class _$SetOrientationCopyWithImpl<$Res> implements $SetOrientationCopyWith<$Res> {
  _$SetOrientationCopyWithImpl(this._value, this._then);

  final SetOrientation _value;
  // ignore: unused_field
  final $Res Function(SetOrientation) _then;

  @override
  $Res call({
    Object orientation = freezed,
  }) {
    return _then(_value.copyWith(
      orientation: orientation == freezed ? _value.orientation : orientation as String,
    ));
  }
}

/// @nodoc
abstract class $SetOrientationStartCopyWith<$Res> implements $SetOrientationCopyWith<$Res> {
  factory $SetOrientationStartCopyWith(SetOrientationStart value, $Res Function(SetOrientationStart) then) =
      _$SetOrientationStartCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String orientation});
}

/// @nodoc
class _$SetOrientationStartCopyWithImpl<$Res> extends _$SetOrientationCopyWithImpl<$Res>
    implements $SetOrientationStartCopyWith<$Res> {
  _$SetOrientationStartCopyWithImpl(SetOrientationStart _value, $Res Function(SetOrientationStart) _then)
      : super(_value, (v) => _then(v as SetOrientationStart));

  @override
  SetOrientationStart get _value => super._value as SetOrientationStart;

  @override
  $Res call({
    Object orientation = freezed,
  }) {
    return _then(SetOrientationStart(
      orientation == freezed ? _value.orientation : orientation as String,
    ));
  }
}

/// @nodoc
class _$SetOrientationStart implements SetOrientationStart {
  const _$SetOrientationStart(@nullable this.orientation);

  @override
  @nullable
  final String orientation;

  @override
  String toString() {
    return 'SetOrientation(orientation: $orientation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetOrientationStart &&
            (identical(other.orientation, orientation) ||
                const DeepCollectionEquality().equals(other.orientation, orientation)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(orientation);

  @override
  $SetOrientationStartCopyWith<SetOrientationStart> get copyWith =>
      _$SetOrientationStartCopyWithImpl<SetOrientationStart>(this, _$identity);
}

abstract class SetOrientationStart implements SetOrientation {
  const factory SetOrientationStart(@nullable String orientation) = _$SetOrientationStart;

  @override
  @nullable
  String get orientation;
  @override
  $SetOrientationStartCopyWith<SetOrientationStart> get copyWith;
}
