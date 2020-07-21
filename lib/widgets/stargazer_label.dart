import 'package:flutter/material.dart';
import 'package:github_repo_explorer/models/models.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StargazerLabel extends StatelessWidget {
  const StargazerLabel({@required this.repository});
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          MdiIcons.star,
          size: 16,
          color: Colors.yellow,
        ),
        Gaps.xxsmall,
        Flexible(
          child: Text(
            repository.formattedStargazers,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
