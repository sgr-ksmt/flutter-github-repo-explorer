import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_explorer/api/github_api.dart';
import 'package:github_repo_explorer/models/models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'repositories_controller.freezed.dart';

enum RepositoriesViewStatus {
  initial,
  loading,
  loaded,
  error,
  empty,
}

@freezed
abstract class RepositoriesState implements _$RepositoriesState {
  factory RepositoriesState({
    @Default(RepositoriesViewStatus.initial) RepositoriesViewStatus status,
    @Default(<Repository>[]) List<Repository> repositories,
  }) = _RepositoriesState;

  RepositoriesState._();

  @late
  Map<int, Repository> get _map => Map.fromEntries(
        repositories.map(
          (r) => MapEntry(r.id, r),
        ),
      );

  Repository repository(int id) => _map[id];
}

class RepositoriesController extends StateNotifier<RepositoriesState> {
  RepositoriesController._(this._ref) : super(RepositoriesState()) {
    _load();
  }
  static final provider = StateNotifierProvider(
    (ref) => RepositoriesController._(ref),
  );

  final ProviderReference _ref;

  Future<void> _load() async {
    state = state.copyWith(status: RepositoriesViewStatus.loading);

    state = state.copyWith(
      status: RepositoriesViewStatus.loaded,
      repositories: await _ref.read(
        GitHubAPI.searchRepositories('flutter'),
      ),
    );
  }
  // TODO: implement search feature.
}
