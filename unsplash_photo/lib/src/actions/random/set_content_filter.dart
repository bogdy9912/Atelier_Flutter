library set_content_filter;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_content_filter.freezed.dart';

@freezed
abstract class SetContentFilter with _$SetContentFilter {
  const factory SetContentFilter(String filter) = SetContentFilterStart;
}
