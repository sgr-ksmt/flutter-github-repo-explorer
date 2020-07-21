// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bookmarks_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookmarksStateTearOff {
  const _$BookmarksStateTearOff();

// ignore: unused_element
  _BookmarksState call({List<Repository> repositories = const <Repository>[]}) {
    return _BookmarksState(
      repositories: repositories,
    );
  }
}

// ignore: unused_element
const $BookmarksState = _$BookmarksStateTearOff();

mixin _$BookmarksState {
  List<Repository> get repositories;

  $BookmarksStateCopyWith<BookmarksState> get copyWith;
}

abstract class $BookmarksStateCopyWith<$Res> {
  factory $BookmarksStateCopyWith(
          BookmarksState value, $Res Function(BookmarksState) then) =
      _$BookmarksStateCopyWithImpl<$Res>;
  $Res call({List<Repository> repositories});
}

class _$BookmarksStateCopyWithImpl<$Res>
    implements $BookmarksStateCopyWith<$Res> {
  _$BookmarksStateCopyWithImpl(this._value, this._then);

  final BookmarksState _value;
  // ignore: unused_field
  final $Res Function(BookmarksState) _then;

  @override
  $Res call({
    Object repositories = freezed,
  }) {
    return _then(_value.copyWith(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories as List<Repository>,
    ));
  }
}

abstract class _$BookmarksStateCopyWith<$Res>
    implements $BookmarksStateCopyWith<$Res> {
  factory _$BookmarksStateCopyWith(
          _BookmarksState value, $Res Function(_BookmarksState) then) =
      __$BookmarksStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Repository> repositories});
}

class __$BookmarksStateCopyWithImpl<$Res>
    extends _$BookmarksStateCopyWithImpl<$Res>
    implements _$BookmarksStateCopyWith<$Res> {
  __$BookmarksStateCopyWithImpl(
      _BookmarksState _value, $Res Function(_BookmarksState) _then)
      : super(_value, (v) => _then(v as _BookmarksState));

  @override
  _BookmarksState get _value => super._value as _BookmarksState;

  @override
  $Res call({
    Object repositories = freezed,
  }) {
    return _then(_BookmarksState(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories as List<Repository>,
    ));
  }
}

class _$_BookmarksState extends _BookmarksState with DiagnosticableTreeMixin {
  _$_BookmarksState({this.repositories = const <Repository>[]})
      : assert(repositories != null),
        super._();

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

  bool _didisEmpty = false;
  bool _isEmpty;

  @override
  bool get isEmpty {
    if (_didisEmpty == false) {
      _didisEmpty = true;
      _isEmpty = repositories.isEmpty;
    }
    return _isEmpty;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarksState(repositories: $repositories, _map: $_map, isEmpty: $isEmpty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarksState'))
      ..add(DiagnosticsProperty('repositories', repositories))
      ..add(DiagnosticsProperty('_map', _map))
      ..add(DiagnosticsProperty('isEmpty', isEmpty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarksState &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repositories);

  @override
  _$BookmarksStateCopyWith<_BookmarksState> get copyWith =>
      __$BookmarksStateCopyWithImpl<_BookmarksState>(this, _$identity);
}

abstract class _BookmarksState extends BookmarksState {
  _BookmarksState._() : super._();
  factory _BookmarksState({List<Repository> repositories}) = _$_BookmarksState;

  @override
  List<Repository> get repositories;
  @override
  _$BookmarksStateCopyWith<_BookmarksState> get copyWith;
}
