// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_order;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetOrderTearOff {
  const _$SetOrderTearOff();

// ignore: unused_element
  SetOrderBy call(String order) {
    return SetOrderBy(
      order,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetOrder = _$SetOrderTearOff();

/// @nodoc
mixin _$SetOrder {
  String get order;

  $SetOrderCopyWith<SetOrder> get copyWith;
}

/// @nodoc
abstract class $SetOrderCopyWith<$Res> {
  factory $SetOrderCopyWith(SetOrder value, $Res Function(SetOrder) then) = _$SetOrderCopyWithImpl<$Res>;
  $Res call({String order});
}

/// @nodoc
class _$SetOrderCopyWithImpl<$Res> implements $SetOrderCopyWith<$Res> {
  _$SetOrderCopyWithImpl(this._value, this._then);

  final SetOrder _value;
  // ignore: unused_field
  final $Res Function(SetOrder) _then;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed ? _value.order : order as String,
    ));
  }
}

/// @nodoc
abstract class $SetOrderByCopyWith<$Res> implements $SetOrderCopyWith<$Res> {
  factory $SetOrderByCopyWith(SetOrderBy value, $Res Function(SetOrderBy) then) = _$SetOrderByCopyWithImpl<$Res>;
  @override
  $Res call({String order});
}

/// @nodoc
class _$SetOrderByCopyWithImpl<$Res> extends _$SetOrderCopyWithImpl<$Res> implements $SetOrderByCopyWith<$Res> {
  _$SetOrderByCopyWithImpl(SetOrderBy _value, $Res Function(SetOrderBy) _then)
      : super(_value, (v) => _then(v as SetOrderBy));

  @override
  SetOrderBy get _value => super._value as SetOrderBy;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(SetOrderBy(
      order == freezed ? _value.order : order as String,
    ));
  }
}

/// @nodoc
class _$SetOrderBy implements SetOrderBy {
  const _$SetOrderBy(this.order) : assert(order != null);

  @override
  final String order;

  @override
  String toString() {
    return 'SetOrder(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetOrderBy &&
            (identical(other.order, order) || const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @override
  $SetOrderByCopyWith<SetOrderBy> get copyWith => _$SetOrderByCopyWithImpl<SetOrderBy>(this, _$identity);
}

abstract class SetOrderBy implements SetOrder {
  const factory SetOrderBy(String order) = _$SetOrderBy;

  @override
  String get order;
  @override
  $SetOrderByCopyWith<SetOrderBy> get copyWith;
}
