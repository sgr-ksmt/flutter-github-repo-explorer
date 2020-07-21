import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_explorer/models/models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'bookmarks_controller.freezed.dart';

@freezed
abstract class BookmarksState implements _$BookmarksState {
  factory BookmarksState({
    @Default(<Repository>[]) List<Repository> repositories,
  }) = _BookmarksState;

  BookmarksState._();
  @late
  Map<int, Repository> get _map => Map.fromEntries(
        repositories.map(
          (r) => MapEntry(r.id, r),
        ),
      );

  @late
  bool get isEmpty => repositories.isEmpty;

  Repository repository(int id) => _map[id];
  bool has(Repository repository) =>
      repositories.firstWhere(
        (r) => r.id == repository.id,
        orElse: () => null,
      ) !=
      null;
}

class BookmarksController extends StateNotifier<BookmarksState> {
  BookmarksController._(this._ref) : super(BookmarksState());

  static final provider = StateNotifierProvider(
    (ref) => BookmarksController._(ref),
  );

  ProviderReference _ref;

  void add(Repository repository) {
    if (state.has(repository)) {
      return;
    }
    state = state.copyWith(
      repositories: [...state.repositories]..add(repository),
    );
  }

  void delete(Repository repository) {
    state = state.copyWith(
      repositories: [...state.repositories]
        ..removeWhere((r) => r.id == repository.id),
    );
  }

  void deleteAll() {
    state = state.copyWith(repositories: []);
  }
}
