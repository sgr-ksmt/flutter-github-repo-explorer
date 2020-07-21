import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_explorer/pages/bookmark/bookmark_page.dart';
import 'package:github_repo_explorer/pages/bookmarks/bookmarks_controller.dart';
import 'package:github_repo_explorer/pages/repositories/repositories_item.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BookmarksPage extends HookWidget {
  const BookmarksPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
        actions: <Widget>[
          IconButton(
            icon: Icon(MdiIcons.delete),
            onPressed: () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: 'Confirm',
                message: 'Are you sure to delete all bookmarks?',
                okLabel: 'Delete',
                cancelLabel: 'Cancel',
                isDestructiveAction: true,
              );
              if (result != OkCancelResult.ok) {
                return;
              }
              BookmarksController.provider.read(context).deleteAll();
            },
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    final isEmpty = useProvider(
        BookmarksController.provider.state.select((s) => s.isEmpty));
    return isEmpty ? const _EmptyView() : const _List();
  }
}

class _List extends HookWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    final repositories = useProvider(
      BookmarksController.provider.state.select((s) => s.repositories),
    );

    return ListView.separated(
      itemBuilder: (context, index) => RepositoriesItem(
        id: repositories[index].id,
        onTap: () async {
          await showModal<void>(
            context: context,
            configuration: const FadeScaleTransitionConfiguration(),
            builder: (_) => BookmarkPage(id: repositories[index].id),
          );
        },
      ),
      separatorBuilder: (_, __) => Gaps.xsmall,
      itemCount: repositories.length,
      padding: const EdgeInsets.all(Space.xsmall),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'There are no bookmarks.\nLet\'s try to add bookmark!',
        textAlign: TextAlign.center,
      ),
    );
  }
}
