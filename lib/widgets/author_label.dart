import 'package:flutter/material.dart';
import 'package:github_repo_explorer/models/repository.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AuthorLabel extends StatelessWidget {
  const AuthorLabel({this.repository});
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          MdiIcons.account,
          size: 16,
        ),
        Gaps.xxsmall,
        Flexible(
          child: Text(
            repository.owner.name,
            style: Theme.of(context).textTheme.bodyText1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
