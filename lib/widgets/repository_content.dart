import 'package:flutter/material.dart';
import 'package:github_repo_explorer/models/models.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RepositoryContent extends StatelessWidget {
  const RepositoryContent({
    @required this.repository,
    @required this.isBookmarked,
    @required this.onPressedAddBookmark,
    @required this.onPressedDeleteBookmark,
  });

  final Repository repository;
  final bool isBookmarked;
  final VoidCallback onPressedAddBookmark;
  final VoidCallback onPressedDeleteBookmark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Space.medium),
      child: Center(
        child: SizedBox(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(Space.medium),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RepositoryLabel(repository: repository),
                  Gaps.medium,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AuthorLabel(repository: repository),
                      Gaps.xsmall,
                      StargazerLabel(repository: repository),
                    ],
                  ),
                  Gaps.medium,
                  Text(repository.description),
                  Gaps.medium,
                  !isBookmarked
                      ? _AddButton(
                          onPressed: onPressedAddBookmark,
                        )
                      : _DeleteButton(
                          onPressed: onPressedDeleteBookmark,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    @required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(MdiIcons.bookmark),
          const Text('Add to bookmarks'),
        ],
      ),
      onPressed: onPressed,
    );
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton({
    @required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(MdiIcons.bookmark),
          const Text('Delete from bookmarks'),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
