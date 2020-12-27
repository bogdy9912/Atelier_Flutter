import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:unsplash_photo/src/models/photo.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;
  final Client _client;

  Future<List<Photo>> getPhotos({int page, int perPage, String orderBy}) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['photos'],
      queryParameters: <String, String>{
        'client_id': 'TypzmEjqRQAVKoVArTlTTOFbRIxXducx-8HVTlawDLY',
        'page': '$page',
        'per_page': '$perPage',
        'order_by': orderBy,
      },
    );

    final Response response = await _client.get(url);
    final List<dynamic> loadedData = jsonDecode(response.body);
    return loadedData.map((dynamic e) => Photo.fromJson(e)).toList();
  }

  Future<List<Photo>> getPhotoRandom({String orientation, int count}) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['photos', 'random'],
      queryParameters: <String, String>{
        'client_id': 'TypzmEjqRQAVKoVArTlTTOFbRIxXducx-8HVTlawDLY',
        if (orientation != null) 'orientation': orientation,
        'count': '$count',
      },
    );

    final Response response = await _client.get(url);
    if (count == 0) {
      print('si acii');
      final dynamic loadedData = json.decode(response.body);
      print(loadedData);
      final List<Photo> listOfRandomPhoto = <Photo>[];
      print('face lista');
      final Photo p = Photo.fromJson(loadedData);
      print(p);
      listOfRandomPhoto.add(p);
      print('a facut lista');
      return listOfRandomPhoto;
    } else {
      final List<dynamic> loadedData = json.decode(response.body);
      return loadedData.map((dynamic e) => Photo.fromJson(e)).toList();
    }
  }
}
//
//void main() async {
//  final UnsplashApi api = UnsplashApi(client: Client());
//  Photo p = await api.getPhotoRandom();
//  print(p);
//}
