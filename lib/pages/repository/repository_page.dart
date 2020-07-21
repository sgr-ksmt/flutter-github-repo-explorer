import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repo_explorer/pages/bookmarks/bookmarks_controller.dart';
import 'package:github_repo_explorer/pages/repositories/repositories_controller.dart';
import 'package:github_repo_explorer/widgets/repository_content.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryPage extends HookWidget {
  const RepositoryPage({this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final repository =
        useProvider(RepositoriesController.provider.state).repository(id);

    if (repository == null) {
      return const SizedBox.shrink();
    }

    final isBookmarked =
        useProvider(BookmarksController.provider.state).has(repository);

    return GestureDetector(
      child: RepositoryContent(
        repository: repository,
        isBookmarked: isBookmarked,
        onPressedAddBookmark: () =>
            BookmarksController.provider.read(context).add(repository),
        onPressedDeleteBookmark: () =>
            BookmarksController.provider.read(context).delete(repository),
      ),
      onTap: Navigator.of(context).pop,
    );
  }
}
