// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_navigation_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppNavigationState> _$appNavigationStateSerializer =
    new _$AppNavigationStateSerializer();

class _$AppNavigationStateSerializer
    implements StructuredSerializer<AppNavigationState> {
  @override
  final Iterable<Type> types = const [AppNavigationState, _$AppNavigationState];
  @override
  final String wireName = 'AppNavigationState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppNavigationState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.screens1;
    if (value != null) {
      result
        ..add('screens1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UseCase1Screens)));
    }
    value = object.screens2;
    if (value != null) {
      result
        ..add('screens2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UseCase2Screens)));
    }
    value = object.screens3;
    if (value != null) {
      result
        ..add('screens3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UseCase3Screens)));
    }
    value = object.screens4;
    if (value != null) {
      result
        ..add('screens4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UseCase4Screens)));
    }
    value = object.screens5;
    if (value != null) {
      result
        ..add('screens5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UseCase5Screens)));
    }
    value = object.screens6;
    if (value != null) {
      result
        ..add('screens6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UseCase6Screens)));
    }
    value = object.useCase;
    if (value != null) {
      result
        ..add('useCase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Usecase)));
    }
    return result;
  }

  @override
  AppNavigationState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppNavigationStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'screens1':
          result.screens1 = serializers.deserialize(value,
                  specifiedType: const FullType(UseCase1Screens))
              as UseCase1Screens?;
          break;
        case 'screens2':
          result.screens2 = serializers.deserialize(value,
                  specifiedType: const FullType(UseCase2Screens))
              as UseCase2Screens?;
          break;
        case 'screens3':
          result.screens3 = serializers.deserialize(value,
                  specifiedType: const FullType(UseCase3Screens))
              as UseCase3Screens?;
          break;
        case 'screens4':
          result.screens4 = serializers.deserialize(value,
                  specifiedType: const FullType(UseCase4Screens))
              as UseCase4Screens?;
          break;
        case 'screens5':
          result.screens5 = serializers.deserialize(value,
                  specifiedType: const FullType(UseCase5Screens))
              as UseCase5Screens?;
          break;
        case 'screens6':
          result.screens6 = serializers.deserialize(value,
                  specifiedType: const FullType(UseCase6Screens))
              as UseCase6Screens?;
          break;
        case 'useCase':
          result.useCase = serializers.deserialize(value,
              specifiedType: const FullType(Usecase)) as Usecase?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppNavigationState extends AppNavigationState {
  @override
  final UseCase1Screens? screens1;
  @override
  final UseCase2Screens? screens2;
  @override
  final UseCase3Screens? screens3;
  @override
  final UseCase4Screens? screens4;
  @override
  final UseCase5Screens? screens5;
  @override
  final UseCase6Screens? screens6;
  @override
  final Usecase? useCase;

  factory _$AppNavigationState(
          [void Function(AppNavigationStateBuilder)? updates]) =>
      (new AppNavigationStateBuilder()..update(updates)).build();

  _$AppNavigationState._(
      {this.screens1,
      this.screens2,
      this.screens3,
      this.screens4,
      this.screens5,
      this.screens6,
      this.useCase})
      : super._();

  @override
  AppNavigationState rebuild(
          void Function(AppNavigationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppNavigationStateBuilder toBuilder() =>
      new AppNavigationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppNavigationState &&
        screens1 == other.screens1 &&
        screens2 == other.screens2 &&
        screens3 == other.screens3 &&
        screens4 == other.screens4 &&
        screens5 == other.screens5 &&
        screens6 == other.screens6 &&
        useCase == other.useCase;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, screens1.hashCode), screens2.hashCode),
                        screens3.hashCode),
                    screens4.hashCode),
                screens5.hashCode),
            screens6.hashCode),
        useCase.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppNavigationState')
          ..add('screens1', screens1)
          ..add('screens2', screens2)
          ..add('screens3', screens3)
          ..add('screens4', screens4)
          ..add('screens5', screens5)
          ..add('screens6', screens6)
          ..add('useCase', useCase))
        .toString();
  }
}

class AppNavigationStateBuilder
    implements Builder<AppNavigationState, AppNavigationStateBuilder> {
  _$AppNavigationState? _$v;

  UseCase1Screens? _screens1;
  UseCase1Screens? get screens1 => _$this._screens1;
  set screens1(UseCase1Screens? screens1) => _$this._screens1 = screens1;

  UseCase2Screens? _screens2;
  UseCase2Screens? get screens2 => _$this._screens2;
  set screens2(UseCase2Screens? screens2) => _$this._screens2 = screens2;

  UseCase3Screens? _screens3;
  UseCase3Screens? get screens3 => _$this._screens3;
  set screens3(UseCase3Screens? screens3) => _$this._screens3 = screens3;

  UseCase4Screens? _screens4;
  UseCase4Screens? get screens4 => _$this._screens4;
  set screens4(UseCase4Screens? screens4) => _$this._screens4 = screens4;

  UseCase5Screens? _screens5;
  UseCase5Screens? get screens5 => _$this._screens5;
  set screens5(UseCase5Screens? screens5) => _$this._screens5 = screens5;

  UseCase6Screens? _screens6;
  UseCase6Screens? get screens6 => _$this._screens6;
  set screens6(UseCase6Screens? screens6) => _$this._screens6 = screens6;

  Usecase? _useCase;
  Usecase? get useCase => _$this._useCase;
  set useCase(Usecase? useCase) => _$this._useCase = useCase;

  AppNavigationStateBuilder() {
    AppNavigationState._initializeBuilder(this);
  }

  AppNavigationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _screens1 = $v.screens1;
      _screens2 = $v.screens2;
      _screens3 = $v.screens3;
      _screens4 = $v.screens4;
      _screens5 = $v.screens5;
      _screens6 = $v.screens6;
      _useCase = $v.useCase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppNavigationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppNavigationState;
  }

  @override
  void update(void Function(AppNavigationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppNavigationState build() {
    final _$result = _$v ??
        new _$AppNavigationState._(
            screens1: screens1,
            screens2: screens2,
            screens3: screens3,
            screens4: screens4,
            screens5: screens5,
            screens6: screens6,
            useCase: useCase);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
