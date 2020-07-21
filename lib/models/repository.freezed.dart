// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

class _$RepositoryTearOff {
  const _$RepositoryTearOff();

// ignore: unused_element
  _Repository call(
      {int id = 0,
      String name = '',
      @JsonKey(name: 'stargazers_count') int stargazers = 0,
      String description = '',
      @required RepositoryOwner owner}) {
    return _Repository(
      id: id,
      name: name,
      stargazers: stargazers,
      description: description,
      owner: owner,
    );
  }
}

// ignore: unused_element
const $Repository = _$RepositoryTearOff();

mixin _$Repository {
  int get id;
  String get name;
  @JsonKey(name: 'stargazers_count')
  int get stargazers;
  String get description;
  RepositoryOwner get owner;

  Map<String, dynamic> toJson();
  $RepositoryCopyWith<Repository> get copyWith;
}

abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'stargazers_count') int stargazers,
      String description,
      RepositoryOwner owner});

  $RepositoryOwnerCopyWith<$Res> get owner;
}

class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object stargazers = freezed,
    Object description = freezed,
    Object owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      stargazers: stargazers == freezed ? _value.stargazers : stargazers as int,
      description:
          description == freezed ? _value.description : description as String,
      owner: owner == freezed ? _value.owner : owner as RepositoryOwner,
    ));
  }

  @override
  $RepositoryOwnerCopyWith<$Res> get owner {
    if (_value.owner == null) {
      return null;
    }
    return $RepositoryOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

abstract class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(
          _Repository value, $Res Function(_Repository) then) =
      __$RepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'stargazers_count') int stargazers,
      String description,
      RepositoryOwner owner});

  @override
  $RepositoryOwnerCopyWith<$Res> get owner;
}

class __$RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(
      _Repository _value, $Res Function(_Repository) _then)
      : super(_value, (v) => _then(v as _Repository));

  @override
  _Repository get _value => super._value as _Repository;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object stargazers = freezed,
    Object description = freezed,
    Object owner = freezed,
  }) {
    return _then(_Repository(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      stargazers: stargazers == freezed ? _value.stargazers : stargazers as int,
      description:
          description == freezed ? _value.description : description as String,
      owner: owner == freezed ? _value.owner : owner as RepositoryOwner,
    ));
  }
}

@JsonSerializable()
class _$_Repository with DiagnosticableTreeMixin implements _Repository {
  _$_Repository(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'stargazers_count') this.stargazers = 0,
      this.description = '',
      @required this.owner})
      : assert(id != null),
        assert(name != null),
        assert(stargazers != null),
        assert(description != null),
        assert(owner != null);

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazers;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @override
  final RepositoryOwner owner;

  bool _didformattedStargazers = false;
  String _formattedStargazers;

  @override
  String get formattedStargazers {
    if (_didformattedStargazers == false) {
      _didformattedStargazers = true;
      _formattedStargazers = (() {
        if (stargazers / 1000000 >= 1) {
          return '${(stargazers / 1000000).toStringAsFixed(1)}M';
        } else if (stargazers / 1000 >= 1) {
          return '${(stargazers / 1000).toStringAsFixed(1)}K';
        } else {
          return stargazers.toString();
        }
      })();
    }
    return _formattedStargazers;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Repository(id: $id, name: $name, stargazers: $stargazers, description: $description, owner: $owner, formattedStargazers: $formattedStargazers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Repository'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('stargazers', stargazers))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('formattedStargazers', formattedStargazers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Repository &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.stargazers, stargazers) ||
                const DeepCollectionEquality()
                    .equals(other.stargazers, stargazers)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(stargazers) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(owner);

  @override
  _$RepositoryCopyWith<_Repository> get copyWith =>
      __$RepositoryCopyWithImpl<_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryToJson(this);
  }
}

abstract class _Repository implements Repository {
  factory _Repository(
      {int id,
      String name,
      @JsonKey(name: 'stargazers_count') int stargazers,
      String description,
      @required RepositoryOwner owner}) = _$_Repository;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazers;
  @override
  String get description;
  @override
  RepositoryOwner get owner;
  @override
  _$RepositoryCopyWith<_Repository> get copyWith;
}

RepositoryOwner _$RepositoryOwnerFromJson(Map<String, dynamic> json) {
  return _RepositoryOwner.fromJson(json);
}

class _$RepositoryOwnerTearOff {
  const _$RepositoryOwnerTearOff();

// ignore: unused_element
  _RepositoryOwner call(
      {int id = 0,
      @JsonKey(name: 'login') String name = '',
      @JsonKey(name: 'avatar_url') String avatarURL = ''}) {
    return _RepositoryOwner(
      id: id,
      name: name,
      avatarURL: avatarURL,
    );
  }
}

// ignore: unused_element
const $RepositoryOwner = _$RepositoryOwnerTearOff();

mixin _$RepositoryOwner {
  int get id;
  @JsonKey(name: 'login')
  String get name;
  @JsonKey(name: 'avatar_url')
  String get avatarURL;

  Map<String, dynamic> toJson();
  $RepositoryOwnerCopyWith<RepositoryOwner> get copyWith;
}

abstract class $RepositoryOwnerCopyWith<$Res> {
  factory $RepositoryOwnerCopyWith(
          RepositoryOwner value, $Res Function(RepositoryOwner) then) =
      _$RepositoryOwnerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarURL});
}

class _$RepositoryOwnerCopyWithImpl<$Res>
    implements $RepositoryOwnerCopyWith<$Res> {
  _$RepositoryOwnerCopyWithImpl(this._value, this._then);

  final RepositoryOwner _value;
  // ignore: unused_field
  final $Res Function(RepositoryOwner) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object avatarURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      avatarURL: avatarURL == freezed ? _value.avatarURL : avatarURL as String,
    ));
  }
}

abstract class _$RepositoryOwnerCopyWith<$Res>
    implements $RepositoryOwnerCopyWith<$Res> {
  factory _$RepositoryOwnerCopyWith(
          _RepositoryOwner value, $Res Function(_RepositoryOwner) then) =
      __$RepositoryOwnerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarURL});
}

class __$RepositoryOwnerCopyWithImpl<$Res>
    extends _$RepositoryOwnerCopyWithImpl<$Res>
    implements _$RepositoryOwnerCopyWith<$Res> {
  __$RepositoryOwnerCopyWithImpl(
      _RepositoryOwner _value, $Res Function(_RepositoryOwner) _then)
      : super(_value, (v) => _then(v as _RepositoryOwner));

  @override
  _RepositoryOwner get _value => super._value as _RepositoryOwner;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object avatarURL = freezed,
  }) {
    return _then(_RepositoryOwner(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      avatarURL: avatarURL == freezed ? _value.avatarURL : avatarURL as String,
    ));
  }
}

@JsonSerializable()
class _$_RepositoryOwner
    with DiagnosticableTreeMixin
    implements _RepositoryOwner {
  const _$_RepositoryOwner(
      {this.id = 0,
      @JsonKey(name: 'login') this.name = '',
      @JsonKey(name: 'avatar_url') this.avatarURL = ''})
      : assert(id != null),
        assert(name != null),
        assert(avatarURL != null);

  factory _$_RepositoryOwner.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryOwnerFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  @JsonKey(name: 'login')
  final String name;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoryOwner(id: $id, name: $name, avatarURL: $avatarURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoryOwner'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarURL', avatarURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoryOwner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarURL, avatarURL) ||
                const DeepCollectionEquality()
                    .equals(other.avatarURL, avatarURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarURL);

  @override
  _$RepositoryOwnerCopyWith<_RepositoryOwner> get copyWith =>
      __$RepositoryOwnerCopyWithImpl<_RepositoryOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryOwnerToJson(this);
  }
}

abstract class _RepositoryOwner implements RepositoryOwner {
  const factory _RepositoryOwner(
      {int id,
      @JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarURL}) = _$_RepositoryOwner;

  factory _RepositoryOwner.fromJson(Map<String, dynamic> json) =
      _$_RepositoryOwner.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'login')
  String get name;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarURL;
  @override
  _$RepositoryOwnerCopyWith<_RepositoryOwner> get copyWith;
}
