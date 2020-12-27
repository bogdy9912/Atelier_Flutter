library get_photo;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_photo/src/models/photo.dart';

part 'get_photo.freezed.dart';

@freezed
abstract class GetPhoto with _$GetPhoto {
  const factory GetPhoto.start(int page) = GetPhotoStart;
  const factory GetPhoto.successful(List<Photo> photos) = GetPhotoSuccessful;
  const factory GetPhoto.error(dynamic error) = GetPhotoError;
  const factory GetPhoto.startRandom() = GetPhotoStartRandom;
  const factory GetPhoto.successfulRandom(List<Photo> photosRandom) = GetPhotoSuccessfulRandom;
  const factory GetPhoto.errorRandom(dynamic error) = GetPhotoErrorRandom;
}
