import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
abstract class Repository with _$Repository {
  factory Repository({
    @Default(0) int id,
    @Default('') String name,
    @Default(0) @JsonKey(name: 'stargazers_count') int stargazers,
    @Default('') String description,
    @required RepositoryOwner owner,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);

  @late
  String get formattedStargazers => (() {
        if (stargazers / 1000000 >= 1) {
          return '${(stargazers / 1000000).toStringAsFixed(1)}M';
        } else if (stargazers / 1000 >= 1) {
          return '${(stargazers / 1000).toStringAsFixed(1)}K';
        } else {
          return stargazers.toString();
        }
      })();
}

@freezed
abstract class RepositoryOwner with _$RepositoryOwner {
  const factory RepositoryOwner({
    @Default(0) int id,
    @Default('') @JsonKey(name: 'login') String name,
    @Default('') @JsonKey(name: 'avatar_url') String avatarURL,
  }) = _RepositoryOwner;

  factory RepositoryOwner.fromJson(Map<String, dynamic> json) =>
      _$RepositoryOwnerFromJson(json);
}
