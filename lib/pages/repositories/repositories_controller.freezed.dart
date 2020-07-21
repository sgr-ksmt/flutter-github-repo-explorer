// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repositories_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RepositoriesStateTearOff {
  const _$RepositoriesStateTearOff();

// ignore: unused_element
  _RepositoriesState call(
      {RepositoriesViewStatus status = RepositoriesViewStatus.initial,
      List<Repository> repositories = const <Repository>[]}) {
    return _RepositoriesState(
      status: status,
      repositories: repositories,
    );
  }
}

// ignore: unused_element
const $RepositoriesState = _$RepositoriesStateTearOff();

mixin _$RepositoriesState {
  RepositoriesViewStatus get status;
  List<Repository> get repositories;

  $RepositoriesStateCopyWith<RepositoriesState> get copyWith;
}

abstract class $RepositoriesStateCopyWith<$Res> {
  factory $RepositoriesStateCopyWith(
          RepositoriesState value, $Res Function(RepositoriesState) then) =
      _$RepositoriesStateCopyWithImpl<$Res>;
  $Res call({RepositoriesViewStatus status, List<Repository> repositories});
}

class _$RepositoriesStateCopyWithImpl<$Res>
    implements $RepositoriesStateCopyWith<$Res> {
  _$RepositoriesStateCopyWithImpl(this._value, this._then);

  final RepositoriesState _value;
  // ignore: unused_field
  final $Res Function(RepositoriesState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object repositories = freezed,
  }) {
    return _then(_value.copyWith(
      status:
          status == freezed ? _value.status : status as RepositoriesViewStatus,
      repositories: repositories == freezed
          ? _value.repositories
          : repositories as List<Repository>,
    ));
  }
}

abstract class _$RepositoriesStateCopyWith<$Res>
    implements $RepositoriesStateCopyWith<$Res> {
  factory _$RepositoriesStateCopyWith(
          _RepositoriesState value, $Res Function(_RepositoriesState) then) =
      __$RepositoriesStateCopyWithImpl<$Res>;
  @override
  $Res call({RepositoriesViewStatus status, List<Repository> repositories});
}

class __$RepositoriesStateCopyWithImpl<$Res>
    extends _$RepositoriesStateCopyWithImpl<$Res>
    implements _$RepositoriesStateCopyWith<$Res> {
  __$RepositoriesStateCopyWithImpl(
      _RepositoriesState _value, $Res Function(_RepositoriesState) _then)
      : super(_value, (v) => _then(v as _RepositoriesState));

  @override
  _RepositoriesState get _value => super._value as _RepositoriesState;

  @override
  $Res call({
    Object status = freezed,
    Object repositories = freezed,
  }) {
    return _then(_RepositoriesState(
      status:
          status == freezed ? _value.status : status as RepositoriesViewStatus,
      repositories: repositories == freezed
          ? _value.repositories
          : repositories as List<Repository>,
    ));
  }
}

class _$_RepositoriesState extends _RepositoriesState
    with DiagnosticableTreeMixin {
  _$_RepositoriesState(
      {this.status = RepositoriesViewStatus.initial,
      this.repositories = const <Repository>[]})
      : assert(status != null),
        assert(repositories != null),
        super._();

  @JsonKey(defaultValue: RepositoriesViewStatus.initial)
  @override
  final RepositoriesViewStatus status;
  @JsonKey(defaultValue: const <Repository>[])
  @override
  final List<Repository> repositories;

  bool _did_map = false;
  Map<int, Repository> __map;

  @override
  Map<int, Repository> get _map {
    if (_did_map == false) {
      _did_map = true;
      __map = Map.fromEntries(
        repositories.map(
          (r) => MapEntry(r.id, r),
        ),
      );
    }
    return __map;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoriesState(status: $status, repositories: $repositories, _map: $_map)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoriesState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('repositories', repositories))
      ..add(DiagnosticsProperty('_map', _map));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoriesState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(repositories);

  @override
  _$RepositoriesStateCopyWith<_RepositoriesState> get copyWith =>
      __$RepositoriesStateCopyWithImpl<_RepositoriesState>(this, _$identity);
}

abstract class _RepositoriesState extends RepositoriesState {
  _RepositoriesState._() : super._();
  factory _RepositoriesState(
      {RepositoriesViewStatus status,
      List<Repository> repositories}) = _$_RepositoriesState;

  @override
  RepositoriesViewStatus get status;
  @override
  List<Repository> get repositories;
  @override
  _$RepositoriesStateCopyWith<_RepositoriesState> get copyWith;
}
