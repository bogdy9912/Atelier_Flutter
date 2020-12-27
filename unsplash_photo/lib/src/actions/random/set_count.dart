library set_count;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_count.freezed.dart';

@freezed
abstract class SetCount with _$SetCount {
  const factory SetCount(int count) = SetCountStart;
}
