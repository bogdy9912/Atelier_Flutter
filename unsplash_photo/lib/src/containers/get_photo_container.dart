import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:unsplash_photo/src/models/index.dart';

class GetPhotoContainer extends StatelessWidget {
  const GetPhotoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<PhotosUpdate> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PhotosUpdate>(
      converter: (Store<AppState> store) => PhotosUpdate(
        photos: store.state.photos.asList(),
        isLoading: store.state.isLoading,
        page: store.state.page,
        orderBy: store.state.orderBy,
      ),
      builder: builder,
    );
  }
}

class PhotosUpdate {
  PhotosUpdate({@required this.photos, @required this.isLoading, @required this.page, @required this.orderBy});

  final List<Photo> photos;
  final bool isLoading;
  final int page;
  final String orderBy;
}
