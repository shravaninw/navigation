// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'usecase2Index',
      serializers.serialize(object.usecase2Index,
          specifiedType: const FullType(String)),
      'loading',
      serializers.serialize(object.loading,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usecase2Index':
          result.usecase2Index = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loading':
          result.loading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final String usecase2Index;
  @override
  final bool loading;
  @override
  final int? count;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.usecase2Index, required this.loading, this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usecase2Index, 'AppState', 'usecase2Index');
    BuiltValueNullFieldError.checkNotNull(loading, 'AppState', 'loading');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        usecase2Index == other.usecase2Index &&
        loading == other.loading &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, usecase2Index.hashCode), loading.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('usecase2Index', usecase2Index)
          ..add('loading', loading)
          ..add('count', count))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  String? _usecase2Index;
  String? get usecase2Index => _$this._usecase2Index;
  set usecase2Index(String? usecase2Index) =>
      _$this._usecase2Index = usecase2Index;

  bool? _loading;
  bool? get loading => _$this._loading;
  set loading(bool? loading) => _$this._loading = loading;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usecase2Index = $v.usecase2Index;
      _loading = $v.loading;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result = _$v ??
        new _$AppState._(
            usecase2Index: BuiltValueNullFieldError.checkNotNull(
                usecase2Index, 'AppState', 'usecase2Index'),
            loading: BuiltValueNullFieldError.checkNotNull(
                loading, 'AppState', 'loading'),
            count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
