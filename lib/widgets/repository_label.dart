import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_explorer/models/models.dart';
import 'package:github_repo_explorer/widgets/widgets.dart';

class RepositoryLabel extends StatelessWidget {
  const RepositoryLabel({
    @required this.repository,
  });
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CachedNetworkImage(
              imageUrl: repository.owner.avatarURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Gaps.xsmall,
        Flexible(
          child: Text(
            repository.name,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
