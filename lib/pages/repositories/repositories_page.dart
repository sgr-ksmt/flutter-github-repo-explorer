import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_explorer/controllers/theme_mode_controller.dart';
import 'package:github_repo_explorer/pages/repositories/repositories_controller.dart';
import 'package:github_repo_explorer/pages/repositories/repositories_item.dart';
import 'package:github_repo_explorer/pages/repository/repository_page.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RepositoriesPage extends HookWidget {
  const RepositoriesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repositories'),
        actions: <Widget>[
          IconButton(
            icon: Icon(MdiIcons.themeLightDark),
            onPressed: useProvider(ThemeModeController.provider).toggle,
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    final status = useProvider(
      RepositoriesController.provider.state.select(
        (s) => s.status,
      ),
    );
    switch (status) {
      case RepositoriesViewStatus.loading:
        return const _LoadingView();
      case RepositoriesViewStatus.loaded:
        return const _List();
      case RepositoriesViewStatus.error:
        return const _ErrorView();
      case RepositoriesViewStatus.empty:
        return const _EmptyView();
      default:
        assert(false, 'invalid condition');
        return const SizedBox.shrink();
    }
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _List extends HookWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    final repositories = useProvider(
      RepositoriesController.provider.state.select((s) => s.repositories),
    );
    return ListView.separated(
      itemBuilder: (context, index) => RepositoriesItem(
        id: repositories[index].id,
        onTap: () async {
          await showModal<void>(
            context: context,
            configuration: const FadeScaleTransitionConfiguration(),
            builder: (_) => RepositoryPage(id: repositories[index].id),
          );
        },
      ),
      separatorBuilder: (_, __) => Gaps.xsmall,
      itemCount: repositories.length,
      padding: const EdgeInsets.all(Space.xsmall),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Error occurred!!\n Please try again.',
            textAlign: TextAlign.center,
          ),
          Gaps.medium,
          OutlineButton(
            child: const Text('Retry'),
            onPressed: () {
              // TODO: handle retry.
            },
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Repository not found!!\n Please search with another word.',
        textAlign: TextAlign.center,
      ),
    );
  }
}
