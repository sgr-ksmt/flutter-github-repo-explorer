import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import 'package:github_repo_explorer/models/models.dart';

class GitHubAPI {
  const GitHubAPI._();
  static final _client = Client();
  static const _baseURL = 'https://api.github.com';

  static final searchRepositories =
      FutureProvider.family((ref, String query) async {
    const path = '/search/repositories';
    final result = await _client.get(
      '$_baseURL$path?q=$query',
    );
    // ignore: unnecessary_parenthesis
    final json = (jsonDecode(result.body) as Map<String, dynamic>);
    final elements = json['items'].cast<Map<String, dynamic>>()
        as List<Map<String, dynamic>>;
    final list = elements.map((e) => Repository.fromJson(e)).toList();
    return list;
  });
}
