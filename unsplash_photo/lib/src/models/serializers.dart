library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:unsplash_photo/src/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Photo,
  UrlPhoto,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
