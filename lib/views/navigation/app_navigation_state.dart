import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttertestapp/model/serializers.dart';

import 'app_navigation_controller.dart';

part 'app_navigation_state.g.dart';

abstract class AppNavigationState
    implements Built<AppNavigationState, AppNavigationStateBuilder> {
  factory AppNavigationState(
          [void Function(AppNavigationStateBuilder)? updates]) =
      _$AppNavigationState;

  AppNavigationState._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppNavigationState.serializer, this)
        as Map<String, dynamic>?;
  }

  static AppNavigationState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppNavigationState.serializer, json);
  }

  static Serializer<AppNavigationState> get serializer =>
      _$appNavigationStateSerializer;

  static void _initializeBuilder(AppNavigationStateBuilder b) {}

  UseCase1Screens? get screens1;
  UseCase2Screens? get screens2;
  UseCase3Screens? get screens3;
  UseCase4Screens? get screens4;
  UseCase5Screens? get screens5;
  UseCase6Screens? get screens6;

  Usecase? get useCase;
}
