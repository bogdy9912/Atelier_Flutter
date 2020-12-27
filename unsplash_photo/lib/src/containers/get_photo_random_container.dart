import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:unsplash_photo/src/models/app_state.dart';
import 'package:unsplash_photo/src/models/photo.dart';

class GetPhotoRandomContainer extends StatelessWidget {
  const GetPhotoRandomContainer({@required this.builder});

  final ViewModelBuilder<PhotoUpdate> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PhotoUpdate>(
      converter: (Store<AppState> store) => PhotoUpdate(
        photo: store.state.photosRandom.asList(),
        isLoading: store.state.isLoading,
        count: store.state.count,
        contentFilter: store.state.contentFilter,
      ),
      builder: builder,
    );
  }
}

class PhotoUpdate {
  PhotoUpdate({@required this.photo, @required this.isLoading, @required this.count, @required this.contentFilter});

  List<Photo> photo;
  bool isLoading;
  int count;
  String contentFilter;
}
