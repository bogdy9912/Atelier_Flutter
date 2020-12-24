// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of order_by;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OrderByTearOff {
  const _$OrderByTearOff();

// ignore: unused_element
  SetOrderBy call(@nullable String order) {
    return SetOrderBy(
      order,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrderBy = _$OrderByTearOff();

/// @nodoc
mixin _$OrderBy {
  @nullable
  String get order;

  $OrderByCopyWith<OrderBy> get copyWith;
}

/// @nodoc
abstract class $OrderByCopyWith<$Res> {
  factory $OrderByCopyWith(OrderBy value, $Res Function(OrderBy) then) =
      _$OrderByCopyWithImpl<$Res>;
  $Res call({@nullable String order});
}

/// @nodoc
class _$OrderByCopyWithImpl<$Res> implements $OrderByCopyWith<$Res> {
  _$OrderByCopyWithImpl(this._value, this._then);

  final OrderBy _value;
  // ignore: unused_field
  final $Res Function(OrderBy) _then;

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
abstract class $SetOrderByCopyWith<$Res> implements $OrderByCopyWith<$Res> {
  factory $SetOrderByCopyWith(
          SetOrderBy value, $Res Function(SetOrderBy) then) =
      _$SetOrderByCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String order});
}

/// @nodoc
class _$SetOrderByCopyWithImpl<$Res> extends _$OrderByCopyWithImpl<$Res>
    implements $SetOrderByCopyWith<$Res> {
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
  const _$SetOrderBy(@nullable this.order);

  @override
  @nullable
  final String order;

  @override
  String toString() {
    return 'OrderBy(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetOrderBy &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @override
  $SetOrderByCopyWith<SetOrderBy> get copyWith =>
      _$SetOrderByCopyWithImpl<SetOrderBy>(this, _$identity);
}

abstract class SetOrderBy implements OrderBy {
  const factory SetOrderBy(@nullable String order) = _$SetOrderBy;

  @override
  @nullable
  String get order;
  @override
  $SetOrderByCopyWith<SetOrderBy> get copyWith;
}
