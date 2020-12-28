part of 'index.dart';

@freezed
abstract class GetPhoto with _$GetPhoto {
  const factory GetPhoto.start(int page) = GetPhotoStart;
  const factory GetPhoto.successful(List<Photo> photos) = GetPhotoSuccessful;
  const factory GetPhoto.error(dynamic error) = GetPhotoError;
  const factory GetPhoto.startRandom() = GetPhotoStartRandom;
  const factory GetPhoto.successfulRandom(List<Photo> photosRandom) = GetPhotoSuccessfulRandom;
  const factory GetPhoto.errorRandom(dynamic error) = GetPhotoErrorRandom;
}
