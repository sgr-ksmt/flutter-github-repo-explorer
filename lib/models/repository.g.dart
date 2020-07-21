// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repository _$_$_RepositoryFromJson(Map json) {
  return _$_Repository(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    stargazers: json['stargazers_count'] as int,
    description: json['description'] as String ?? '',
    owner: json['owner'] == null
        ? null
        : RepositoryOwner.fromJson((json['owner'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stargazers_count': instance.stargazers,
      'description': instance.description,
      'owner': instance.owner?.toJson(),
    };

_$_RepositoryOwner _$_$_RepositoryOwnerFromJson(Map json) {
  return _$_RepositoryOwner(
    id: json['id'] as int ?? 0,
    name: json['login'] as String,
    avatarURL: json['avatar_url'] as String,
  );
}

Map<String, dynamic> _$_$_RepositoryOwnerToJson(_$_RepositoryOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.name,
      'avatar_url': instance.avatarURL,
    };
