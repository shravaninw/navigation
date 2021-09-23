library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:fluttertestapp/model/app_state.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppNavigationState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
