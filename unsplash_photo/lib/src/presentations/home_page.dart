import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';
import 'package:unsplash_photo/src/actions/index.dart';
import 'package:unsplash_photo/src/containers/get_photo_container.dart';
import 'package:unsplash_photo/src/models/index.dart';
import 'package:unsplash_photo/src/presentations/app_drawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return GetPhotoContainer(
      builder: (BuildContext context, PhotosUpdate photosUpdate) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Photos'),
            centerTitle: true,
            actions: <Widget>[
              DropdownButton<String>(
                value: StoreProvider.of<AppState>(context).state.orderBy,
                items: <String>['latest', 'oldest', 'popular']
                    .map(
                      (String e) => DropdownMenuItem<String>(
                        child: Text(
                          e,
                          style: const TextStyle(color: Colors.deepOrange),
                        ),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (String selected) {
                  StoreProvider.of<AppState>(context)..dispatch(SetOrder(selected))..dispatch(const GetPhoto.start(1));
                },
              ),
            ],
          ),
          drawer: Drawer(
            child: AppDrawer(),
          ),
          body: photosUpdate.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: photosUpdate.photos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      child: Image.network(
                        photosUpdate.photos[index].urlPhoto.regular,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              final Store<AppState> store = StoreProvider.of<AppState>(context);
              store.dispatch(GetPhoto.start(store.state.page));
            },
          ),
        );
      },
    );
  }
}
