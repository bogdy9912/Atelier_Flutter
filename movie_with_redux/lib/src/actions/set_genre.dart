library set_genre;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_genre.freezed.dart';


@freezed
abstract class SetGenre with _$SetGenre{
  const factory SetGenre.start(List<String> genres) = SetGenreStart;
  const factory SetGenre.concat(String genre) = SetGenreConcat;
  const factory SetGenre.delete() = SetGenreDelete;

}