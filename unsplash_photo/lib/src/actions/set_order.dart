library set_order;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_order.freezed.dart';

@freezed
abstract class SetOrder with _$SetOrder {
  const factory SetOrder(String order) = SetOrderBy;
}
