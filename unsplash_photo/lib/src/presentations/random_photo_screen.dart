import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:unsplash_photo/src/actions/get_photo.dart';
import 'package:unsplash_photo/src/actions/random/set_content_filter.dart';
import 'package:unsplash_photo/src/actions/random/set_count.dart';
import 'package:unsplash_photo/src/actions/random/set_orientation.dart';
import 'package:unsplash_photo/src/containers/get_photo_random_container.dart';
import 'package:unsplash_photo/src/models/app_state.dart';
import 'package:unsplash_photo/src/presentations/app_drawer.dart';

class RandomPhotoScreen extends StatelessWidget {
  static const String nameRoute = '/random_photo_screen';

  @override
  Widget build(BuildContext context) {
    return GetPhotoRandomContainer(
      builder: (BuildContext context, PhotoUpdate photoUpdate) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Random'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const GetPhoto.startRandom());
                },
              ),
              IconButton(
                icon: const Icon(Icons.photo_filter),
                onPressed: () {
                  showDialog<Widget>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Select content filter'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              StoreProvider.of<AppState>(context)
                                ..dispatch(const SetContentFilter('low'))
                                ..dispatch(const GetPhoto.startRandom());
                            },
                            child: Text(
                              'low',
                              style: TextStyle(
                                color: photoUpdate.contentFilter == 'low' ? Colors.blue : Colors.black,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              StoreProvider.of<AppState>(context)
                                ..dispatch(const SetContentFilter('high'))
                                ..dispatch(const GetPhoto.startRandom());
                            },
                            child: Text(
                              'high',
                              style: TextStyle(
                                color: photoUpdate.contentFilter == 'high' ? Colors.blue : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'CLOSE',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          drawer: Drawer(
            child: AppDrawer(),
          ),
          body: photoUpdate.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: <Widget>[
                    if (photoUpdate.count == 1)
                      Expanded(
                        child: Center(
                          child: Image.network(photoUpdate.photo[0].urlPhoto.regular),
                        ),
                      )
                    else
                      Expanded(
                        child: ListView.builder(
                          itemCount: photoUpdate.count,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Image.network(photoUpdate.photo[index].urlPhoto.regular),
                            );
                          },
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        DropdownButton<String>(
                          value: StoreProvider.of<AppState>(context).state.orientation,
                          hint: Text(StoreProvider.of<AppState>(context).state.orientation ?? 'All'),
                          items: <String>[null, 'landscape', 'portrait', 'squarish'].map(
                            (String e) {
                              return DropdownMenuItem<String>(
                                child: Text(e ?? 'All'),
                                value: e,
                              );
                            },
                          ).toList(),
                          onChanged: (String selected) {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(SetOrientation(selected))
                              ..dispatch(const GetPhotoStartRandom());
                          },
                        ),
                        Container(
                          width: 104,
                          child: Row(
                            children: <Widget>[
                              if (photoUpdate.count > 1)
                                IconButton(
                                  icon: const Icon(Icons.remove_circle_outline),
                                  onPressed: () {
                                    // Cum e mai ok, sa incrementez in presentation sau in reducer?
                                    StoreProvider.of<AppState>(context)
                                      ..dispatch(SetCount(photoUpdate.count - 1))
                                      ..dispatch(const GetPhotoStartRandom());
                                  },
                                ),
                              Text('${photoUpdate.count}'),
                              IconButton(
                                icon: const Icon(Icons.add_circle_outline),
                                onPressed: () {
                                  // Cum e mai ok, sa incrementez in presentation sau in reducer?
                                  StoreProvider.of<AppState>(context)
                                    ..dispatch(SetCount(photoUpdate.count + 1))
                                    ..dispatch(const GetPhotoStartRandom());
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        );
      },
    );
  }
}
