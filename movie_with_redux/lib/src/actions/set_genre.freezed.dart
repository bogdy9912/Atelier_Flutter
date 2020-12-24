// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_genre;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetGenreTearOff {
  const _$SetGenreTearOff();

// ignore: unused_element
  SetGenreStart start(List<String> genres) {
    return SetGenreStart(
      genres,
    );
  }

// ignore: unused_element
  SetGenreConcat concat(String genre) {
    return SetGenreConcat(
      genre,
    );
  }

// ignore: unused_element
  SetGenreDelete delete() {
    return const SetGenreDelete();
  }
}

/// @nodoc
// ignore: unused_element
const $SetGenre = _$SetGenreTearOff();

/// @nodoc
mixin _$SetGenre {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(List<String> genres),
    @required Result concat(String genre),
    @required Result delete(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(List<String> genres),
    Result concat(String genre),
    Result delete(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SetGenreStart value),
    @required Result concat(SetGenreConcat value),
    @required Result delete(SetGenreDelete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SetGenreStart value),
    Result concat(SetGenreConcat value),
    Result delete(SetGenreDelete value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SetGenreCopyWith<$Res> {
  factory $SetGenreCopyWith(SetGenre value, $Res Function(SetGenre) then) = _$SetGenreCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetGenreCopyWithImpl<$Res> implements $SetGenreCopyWith<$Res> {
  _$SetGenreCopyWithImpl(this._value, this._then);

  final SetGenre _value;
  // ignore: unused_field
  final $Res Function(SetGenre) _then;
}

/// @nodoc
abstract class $SetGenreStartCopyWith<$Res> {
  factory $SetGenreStartCopyWith(SetGenreStart value, $Res Function(SetGenreStart) then) =
      _$SetGenreStartCopyWithImpl<$Res>;
  $Res call({List<String> genres});
}

/// @nodoc
class _$SetGenreStartCopyWithImpl<$Res> extends _$SetGenreCopyWithImpl<$Res> implements $SetGenreStartCopyWith<$Res> {
  _$SetGenreStartCopyWithImpl(SetGenreStart _value, $Res Function(SetGenreStart) _then)
      : super(_value, (v) => _then(v as SetGenreStart));

  @override
  SetGenreStart get _value => super._value as SetGenreStart;

  @override
  $Res call({
    Object genres = freezed,
  }) {
    return _then(SetGenreStart(
      genres == freezed ? _value.genres : genres as List<String>,
    ));
  }
}

/// @nodoc
class _$SetGenreStart implements SetGenreStart {
  const _$SetGenreStart(this.genres) : assert(genres != null);

  @override
  final List<String> genres;

  @override
  String toString() {
    return 'SetGenre.start(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetGenreStart &&
            (identical(other.genres, genres) || const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(genres);

  @override
  $SetGenreStartCopyWith<SetGenreStart> get copyWith => _$SetGenreStartCopyWithImpl<SetGenreStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(List<String> genres),
    @required Result concat(String genre),
    @required Result delete(),
  }) {
    assert(start != null);
    assert(concat != null);
    assert(delete != null);
    return start(genres);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(List<String> genres),
    Result concat(String genre),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(genres);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SetGenreStart value),
    @required Result concat(SetGenreConcat value),
    @required Result delete(SetGenreDelete value),
  }) {
    assert(start != null);
    assert(concat != null);
    assert(delete != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SetGenreStart value),
    Result concat(SetGenreConcat value),
    Result delete(SetGenreDelete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SetGenreStart implements SetGenre {
  const factory SetGenreStart(List<String> genres) = _$SetGenreStart;

  List<String> get genres;
  $SetGenreStartCopyWith<SetGenreStart> get copyWith;
}

/// @nodoc
abstract class $SetGenreConcatCopyWith<$Res> {
  factory $SetGenreConcatCopyWith(SetGenreConcat value, $Res Function(SetGenreConcat) then) =
      _$SetGenreConcatCopyWithImpl<$Res>;
  $Res call({String genre});
}

/// @nodoc
class _$SetGenreConcatCopyWithImpl<$Res> extends _$SetGenreCopyWithImpl<$Res> implements $SetGenreConcatCopyWith<$Res> {
  _$SetGenreConcatCopyWithImpl(SetGenreConcat _value, $Res Function(SetGenreConcat) _then)
      : super(_value, (v) => _then(v as SetGenreConcat));

  @override
  SetGenreConcat get _value => super._value as SetGenreConcat;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(SetGenreConcat(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

/// @nodoc
class _$SetGenreConcat implements SetGenreConcat {
  const _$SetGenreConcat(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString() {
    return 'SetGenre.concat(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetGenreConcat &&
            (identical(other.genre, genre) || const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  $SetGenreConcatCopyWith<SetGenreConcat> get copyWith =>
      _$SetGenreConcatCopyWithImpl<SetGenreConcat>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(List<String> genres),
    @required Result concat(String genre),
    @required Result delete(),
  }) {
    assert(start != null);
    assert(concat != null);
    assert(delete != null);
    return concat(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(List<String> genres),
    Result concat(String genre),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (concat != null) {
      return concat(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SetGenreStart value),
    @required Result concat(SetGenreConcat value),
    @required Result delete(SetGenreDelete value),
  }) {
    assert(start != null);
    assert(concat != null);
    assert(delete != null);
    return concat(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SetGenreStart value),
    Result concat(SetGenreConcat value),
    Result delete(SetGenreDelete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (concat != null) {
      return concat(this);
    }
    return orElse();
  }
}

abstract class SetGenreConcat implements SetGenre {
  const factory SetGenreConcat(String genre) = _$SetGenreConcat;

  String get genre;
  $SetGenreConcatCopyWith<SetGenreConcat> get copyWith;
}

/// @nodoc
abstract class $SetGenreDeleteCopyWith<$Res> {
  factory $SetGenreDeleteCopyWith(SetGenreDelete value, $Res Function(SetGenreDelete) then) =
      _$SetGenreDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetGenreDeleteCopyWithImpl<$Res> extends _$SetGenreCopyWithImpl<$Res> implements $SetGenreDeleteCopyWith<$Res> {
  _$SetGenreDeleteCopyWithImpl(SetGenreDelete _value, $Res Function(SetGenreDelete) _then)
      : super(_value, (v) => _then(v as SetGenreDelete));

  @override
  SetGenreDelete get _value => super._value as SetGenreDelete;
}

/// @nodoc
class _$SetGenreDelete implements SetGenreDelete {
  const _$SetGenreDelete();

  @override
  String toString() {
    return 'SetGenre.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SetGenreDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(List<String> genres),
    @required Result concat(String genre),
    @required Result delete(),
  }) {
    assert(start != null);
    assert(concat != null);
    assert(delete != null);
    return delete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(List<String> genres),
    Result concat(String genre),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SetGenreStart value),
    @required Result concat(SetGenreConcat value),
    @required Result delete(SetGenreDelete value),
  }) {
    assert(start != null);
    assert(concat != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SetGenreStart value),
    Result concat(SetGenreConcat value),
    Result delete(SetGenreDelete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class SetGenreDelete implements SetGenre {
  const factory SetGenreDelete() = _$SetGenreDelete;
}
