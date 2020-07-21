import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repo_explorer/pages/repositories/repositories_controller.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';

class RepositoriesItem extends HookWidget {
  const RepositoriesItem({
    @required this.id,
    this.onTap,
  });
  final int id;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final repository =
        useProvider(RepositoriesController.provider.state).repository(id);
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(Space.medium),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RepositoryLabel(repository: repository),
              Gaps.xxsmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AuthorLabel(repository: repository),
                  StargazerLabel(repository: repository),
                ],
              ),
            ],
          ),
        ),
        onTap: onTap ?? () {},
      ),
    );
  }
}
