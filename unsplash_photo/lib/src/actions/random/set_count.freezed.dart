// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_count;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetCountTearOff {
  const _$SetCountTearOff();

// ignore: unused_element
  SetCountStart call(int count) {
    return SetCountStart(
      count,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetCount = _$SetCountTearOff();

/// @nodoc
mixin _$SetCount {
  int get count;

  $SetCountCopyWith<SetCount> get copyWith;
}

/// @nodoc
abstract class $SetCountCopyWith<$Res> {
  factory $SetCountCopyWith(SetCount value, $Res Function(SetCount) then) = _$SetCountCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$SetCountCopyWithImpl<$Res> implements $SetCountCopyWith<$Res> {
  _$SetCountCopyWithImpl(this._value, this._then);

  final SetCount _value;
  // ignore: unused_field
  final $Res Function(SetCount) _then;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
abstract class $SetCountStartCopyWith<$Res> implements $SetCountCopyWith<$Res> {
  factory $SetCountStartCopyWith(SetCountStart value, $Res Function(SetCountStart) then) =
      _$SetCountStartCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class _$SetCountStartCopyWithImpl<$Res> extends _$SetCountCopyWithImpl<$Res> implements $SetCountStartCopyWith<$Res> {
  _$SetCountStartCopyWithImpl(SetCountStart _value, $Res Function(SetCountStart) _then)
      : super(_value, (v) => _then(v as SetCountStart));

  @override
  SetCountStart get _value => super._value as SetCountStart;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(SetCountStart(
      count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
class _$SetCountStart implements SetCountStart {
  const _$SetCountStart(this.count) : assert(count != null);

  @override
  final int count;

  @override
  String toString() {
    return 'SetCount(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetCountStart &&
            (identical(other.count, count) || const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  $SetCountStartCopyWith<SetCountStart> get copyWith => _$SetCountStartCopyWithImpl<SetCountStart>(this, _$identity);
}

abstract class SetCountStart implements SetCount {
  const factory SetCountStart(int count) = _$SetCountStart;

  @override
  int get count;
  @override
  $SetCountStartCopyWith<SetCountStart> get copyWith;
}
