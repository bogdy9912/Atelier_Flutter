library order_by;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_by.freezed.dart';

@freezed
abstract class OrderBy with _$OrderBy {
  const factory OrderBy(@nullable String order) = SetOrderBy;
}
