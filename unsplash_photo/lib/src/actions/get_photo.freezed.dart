// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of get_photo;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetPhotoTearOff {
  const _$GetPhotoTearOff();

// ignore: unused_element
  GetPhotoStart start(int page) {
    return GetPhotoStart(
      page,
    );
  }

// ignore: unused_element
  GetPhotoSuccessful successful(List<Photo> photos) {
    return GetPhotoSuccessful(
      photos,
    );
  }

// ignore: unused_element
  GetPhotoError error(dynamic error) {
    return GetPhotoError(
      error,
    );
  }

// ignore: unused_element
  GetPhotoStartRandom startRandom() {
    return const GetPhotoStartRandom();
  }

// ignore: unused_element
  GetPhotoSuccessfulRandom successfulRandom(List<Photo> photosRandom) {
    return GetPhotoSuccessfulRandom(
      photosRandom,
    );
  }

// ignore: unused_element
  GetPhotoErrorRandom errorRandom(dynamic error) {
    return GetPhotoErrorRandom(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPhoto = _$GetPhotoTearOff();

/// @nodoc
mixin _$GetPhoto {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPhotoCopyWith<$Res> {
  factory $GetPhotoCopyWith(GetPhoto value, $Res Function(GetPhoto) then) = _$GetPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotoCopyWithImpl<$Res> implements $GetPhotoCopyWith<$Res> {
  _$GetPhotoCopyWithImpl(this._value, this._then);

  final GetPhoto _value;
  // ignore: unused_field
  final $Res Function(GetPhoto) _then;
}

/// @nodoc
abstract class $GetPhotoStartCopyWith<$Res> {
  factory $GetPhotoStartCopyWith(GetPhotoStart value, $Res Function(GetPhotoStart) then) =
      _$GetPhotoStartCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetPhotoStartCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res> implements $GetPhotoStartCopyWith<$Res> {
  _$GetPhotoStartCopyWithImpl(GetPhotoStart _value, $Res Function(GetPhotoStart) _then)
      : super(_value, (v) => _then(v as GetPhotoStart));

  @override
  GetPhotoStart get _value => super._value as GetPhotoStart;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(GetPhotoStart(
      page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$GetPhotoStart implements GetPhotoStart {
  const _$GetPhotoStart(this.page) : assert(page != null);

  @override
  final int page;

  @override
  String toString() {
    return 'GetPhoto.start(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoStart &&
            (identical(other.page, page) || const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $GetPhotoStartCopyWith<GetPhotoStart> get copyWith => _$GetPhotoStartCopyWithImpl<GetPhotoStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return start(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetPhotoStart implements GetPhoto {
  const factory GetPhotoStart(int page) = _$GetPhotoStart;

  int get page;
  $GetPhotoStartCopyWith<GetPhotoStart> get copyWith;
}

/// @nodoc
abstract class $GetPhotoSuccessfulCopyWith<$Res> {
  factory $GetPhotoSuccessfulCopyWith(GetPhotoSuccessful value, $Res Function(GetPhotoSuccessful) then) =
      _$GetPhotoSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$GetPhotoSuccessfulCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoSuccessfulCopyWith<$Res> {
  _$GetPhotoSuccessfulCopyWithImpl(GetPhotoSuccessful _value, $Res Function(GetPhotoSuccessful) _then)
      : super(_value, (v) => _then(v as GetPhotoSuccessful));

  @override
  GetPhotoSuccessful get _value => super._value as GetPhotoSuccessful;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(GetPhotoSuccessful(
      photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

/// @nodoc
class _$GetPhotoSuccessful implements GetPhotoSuccessful {
  const _$GetPhotoSuccessful(this.photos) : assert(photos != null);

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'GetPhoto.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoSuccessful &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @override
  $GetPhotoSuccessfulCopyWith<GetPhotoSuccessful> get copyWith =>
      _$GetPhotoSuccessfulCopyWithImpl<GetPhotoSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotoSuccessful implements GetPhoto {
  const factory GetPhotoSuccessful(List<Photo> photos) = _$GetPhotoSuccessful;

  List<Photo> get photos;
  $GetPhotoSuccessfulCopyWith<GetPhotoSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPhotoErrorCopyWith<$Res> {
  factory $GetPhotoErrorCopyWith(GetPhotoError value, $Res Function(GetPhotoError) then) =
      _$GetPhotoErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetPhotoErrorCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res> implements $GetPhotoErrorCopyWith<$Res> {
  _$GetPhotoErrorCopyWithImpl(GetPhotoError _value, $Res Function(GetPhotoError) _then)
      : super(_value, (v) => _then(v as GetPhotoError));

  @override
  GetPhotoError get _value => super._value as GetPhotoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPhotoError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetPhotoError implements GetPhotoError {
  const _$GetPhotoError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetPhoto.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPhotoErrorCopyWith<GetPhotoError> get copyWith => _$GetPhotoErrorCopyWithImpl<GetPhotoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotoError implements GetPhoto {
  const factory GetPhotoError(dynamic error) = _$GetPhotoError;

  dynamic get error;
  $GetPhotoErrorCopyWith<GetPhotoError> get copyWith;
}

/// @nodoc
abstract class $GetPhotoStartRandomCopyWith<$Res> {
  factory $GetPhotoStartRandomCopyWith(GetPhotoStartRandom value, $Res Function(GetPhotoStartRandom) then) =
      _$GetPhotoStartRandomCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotoStartRandomCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoStartRandomCopyWith<$Res> {
  _$GetPhotoStartRandomCopyWithImpl(GetPhotoStartRandom _value, $Res Function(GetPhotoStartRandom) _then)
      : super(_value, (v) => _then(v as GetPhotoStartRandom));

  @override
  GetPhotoStartRandom get _value => super._value as GetPhotoStartRandom;
}

/// @nodoc
class _$GetPhotoStartRandom implements GetPhotoStartRandom {
  const _$GetPhotoStartRandom();

  @override
  String toString() {
    return 'GetPhoto.startRandom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPhotoStartRandom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return startRandom();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startRandom != null) {
      return startRandom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return startRandom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startRandom != null) {
      return startRandom(this);
    }
    return orElse();
  }
}

abstract class GetPhotoStartRandom implements GetPhoto {
  const factory GetPhotoStartRandom() = _$GetPhotoStartRandom;
}

/// @nodoc
abstract class $GetPhotoSuccessfulRandomCopyWith<$Res> {
  factory $GetPhotoSuccessfulRandomCopyWith(
          GetPhotoSuccessfulRandom value, $Res Function(GetPhotoSuccessfulRandom) then) =
      _$GetPhotoSuccessfulRandomCopyWithImpl<$Res>;
  $Res call({List<Photo> photosRandom});
}

/// @nodoc
class _$GetPhotoSuccessfulRandomCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoSuccessfulRandomCopyWith<$Res> {
  _$GetPhotoSuccessfulRandomCopyWithImpl(GetPhotoSuccessfulRandom _value, $Res Function(GetPhotoSuccessfulRandom) _then)
      : super(_value, (v) => _then(v as GetPhotoSuccessfulRandom));

  @override
  GetPhotoSuccessfulRandom get _value => super._value as GetPhotoSuccessfulRandom;

  @override
  $Res call({
    Object photosRandom = freezed,
  }) {
    return _then(GetPhotoSuccessfulRandom(
      photosRandom == freezed ? _value.photosRandom : photosRandom as List<Photo>,
    ));
  }
}

/// @nodoc
class _$GetPhotoSuccessfulRandom implements GetPhotoSuccessfulRandom {
  const _$GetPhotoSuccessfulRandom(this.photosRandom) : assert(photosRandom != null);

  @override
  final List<Photo> photosRandom;

  @override
  String toString() {
    return 'GetPhoto.successfulRandom(photosRandom: $photosRandom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoSuccessfulRandom &&
            (identical(other.photosRandom, photosRandom) ||
                const DeepCollectionEquality().equals(other.photosRandom, photosRandom)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photosRandom);

  @override
  $GetPhotoSuccessfulRandomCopyWith<GetPhotoSuccessfulRandom> get copyWith =>
      _$GetPhotoSuccessfulRandomCopyWithImpl<GetPhotoSuccessfulRandom>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return successfulRandom(photosRandom);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successfulRandom != null) {
      return successfulRandom(photosRandom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return successfulRandom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successfulRandom != null) {
      return successfulRandom(this);
    }
    return orElse();
  }
}

abstract class GetPhotoSuccessfulRandom implements GetPhoto {
  const factory GetPhotoSuccessfulRandom(List<Photo> photosRandom) = _$GetPhotoSuccessfulRandom;

  List<Photo> get photosRandom;
  $GetPhotoSuccessfulRandomCopyWith<GetPhotoSuccessfulRandom> get copyWith;
}

/// @nodoc
abstract class $GetPhotoErrorRandomCopyWith<$Res> {
  factory $GetPhotoErrorRandomCopyWith(GetPhotoErrorRandom value, $Res Function(GetPhotoErrorRandom) then) =
      _$GetPhotoErrorRandomCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetPhotoErrorRandomCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoErrorRandomCopyWith<$Res> {
  _$GetPhotoErrorRandomCopyWithImpl(GetPhotoErrorRandom _value, $Res Function(GetPhotoErrorRandom) _then)
      : super(_value, (v) => _then(v as GetPhotoErrorRandom));

  @override
  GetPhotoErrorRandom get _value => super._value as GetPhotoErrorRandom;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPhotoErrorRandom(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetPhotoErrorRandom implements GetPhotoErrorRandom {
  const _$GetPhotoErrorRandom(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetPhoto.errorRandom(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoErrorRandom &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPhotoErrorRandomCopyWith<GetPhotoErrorRandom> get copyWith =>
      _$GetPhotoErrorRandomCopyWithImpl<GetPhotoErrorRandom>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
    @required Result startRandom(),
    @required Result successfulRandom(List<Photo> photosRandom),
    @required Result errorRandom(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return errorRandom(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    Result startRandom(),
    Result successfulRandom(List<Photo> photosRandom),
    Result errorRandom(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorRandom != null) {
      return errorRandom(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetPhotoStart value),
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
    @required Result startRandom(GetPhotoStartRandom value),
    @required Result successfulRandom(GetPhotoSuccessfulRandom value),
    @required Result errorRandom(GetPhotoErrorRandom value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    assert(startRandom != null);
    assert(successfulRandom != null);
    assert(errorRandom != null);
    return errorRandom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetPhotoStart value),
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    Result startRandom(GetPhotoStartRandom value),
    Result successfulRandom(GetPhotoSuccessfulRandom value),
    Result errorRandom(GetPhotoErrorRandom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorRandom != null) {
      return errorRandom(this);
    }
    return orElse();
  }
}

abstract class GetPhotoErrorRandom implements GetPhoto {
  const factory GetPhotoErrorRandom(dynamic error) = _$GetPhotoErrorRandom;

  dynamic get error;
  $GetPhotoErrorRandomCopyWith<GetPhotoErrorRandom> get copyWith;
}
