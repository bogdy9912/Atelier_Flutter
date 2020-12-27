// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_content_filter;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetContentFilterTearOff {
  const _$SetContentFilterTearOff();

// ignore: unused_element
  SetContentFilterStart call(String filter) {
    return SetContentFilterStart(
      filter,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetContentFilter = _$SetContentFilterTearOff();

/// @nodoc
mixin _$SetContentFilter {
  String get filter;

  $SetContentFilterCopyWith<SetContentFilter> get copyWith;
}

/// @nodoc
abstract class $SetContentFilterCopyWith<$Res> {
  factory $SetContentFilterCopyWith(SetContentFilter value, $Res Function(SetContentFilter) then) =
      _$SetContentFilterCopyWithImpl<$Res>;
  $Res call({String filter});
}

/// @nodoc
class _$SetContentFilterCopyWithImpl<$Res> implements $SetContentFilterCopyWith<$Res> {
  _$SetContentFilterCopyWithImpl(this._value, this._then);

  final SetContentFilter _value;
  // ignore: unused_field
  final $Res Function(SetContentFilter) _then;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed ? _value.filter : filter as String,
    ));
  }
}

/// @nodoc
abstract class $SetContentFilterStartCopyWith<$Res> implements $SetContentFilterCopyWith<$Res> {
  factory $SetContentFilterStartCopyWith(SetContentFilterStart value, $Res Function(SetContentFilterStart) then) =
      _$SetContentFilterStartCopyWithImpl<$Res>;
  @override
  $Res call({String filter});
}

/// @nodoc
class _$SetContentFilterStartCopyWithImpl<$Res> extends _$SetContentFilterCopyWithImpl<$Res>
    implements $SetContentFilterStartCopyWith<$Res> {
  _$SetContentFilterStartCopyWithImpl(SetContentFilterStart _value, $Res Function(SetContentFilterStart) _then)
      : super(_value, (v) => _then(v as SetContentFilterStart));

  @override
  SetContentFilterStart get _value => super._value as SetContentFilterStart;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(SetContentFilterStart(
      filter == freezed ? _value.filter : filter as String,
    ));
  }
}

/// @nodoc
class _$SetContentFilterStart implements SetContentFilterStart {
  const _$SetContentFilterStart(this.filter) : assert(filter != null);

  @override
  final String filter;

  @override
  String toString() {
    return 'SetContentFilter(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetContentFilterStart &&
            (identical(other.filter, filter) || const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @override
  $SetContentFilterStartCopyWith<SetContentFilterStart> get copyWith =>
      _$SetContentFilterStartCopyWithImpl<SetContentFilterStart>(this, _$identity);
}

abstract class SetContentFilterStart implements SetContentFilter {
  const factory SetContentFilterStart(String filter) = _$SetContentFilterStart;

  @override
  String get filter;
  @override
  $SetContentFilterStartCopyWith<SetContentFilterStart> get copyWith;
}
