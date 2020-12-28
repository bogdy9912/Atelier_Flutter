import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:unsplash_photo/src/actions/index.dart';
import 'package:unsplash_photo/src/models/index.dart';
import 'package:unsplash_photo/src/presentations/home_page.dart';
import 'package:unsplash_photo/src/presentations/random_photo_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: const Text('All photos'),
          leading: const Icon(Icons.photo_album),
          onTap: () {
            Navigator.of(context).pushNamed(HomePage.routeName);
            StoreProvider.of<AppState>(context).dispatch(const GetPhoto.start(1));
          },
        ),
        ListTile(
          title: const Text('Random photo'),
          leading: const Icon(Icons.photo),
          onTap: () {
            Navigator.of(context).pushNamed(RandomPhotoScreen.nameRoute);
            StoreProvider.of<AppState>(context).dispatch(const GetPhoto.startRandom());
          },
        ),
      ],
    );
  }
}
