import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repo_explorer/pages/bookmarks/bookmarks_page.dart';
import 'package:github_repo_explorer/pages/repositories/repositories_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@immutable
class _Tab {
  const _Tab({this.page, this.item});
  final Widget page;
  final BottomNavigationBarItem item;
}

final List<_Tab> _tabs = [
  _Tab(
    page: const RepositoriesPage(),
    item: BottomNavigationBarItem(
      title: const Text('Repositories'),
      icon: Icon(MdiIcons.sourceRepositoryMultiple),
    ),
  ),
  _Tab(
    page: const BookmarksPage(),
    item: BottomNavigationBarItem(
      title: const Text('Bookmarks'),
      icon: Icon(MdiIcons.bookmark),
    ),
  ),
];

final _provider = StateProvider((ref) => 0);

class MainTab extends HookWidget {
  const MainTab();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: _BottomNavBar(),
      body: _Pages(),
    );
  }
}

class _Pages extends HookWidget {
  const _Pages();

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: useProvider(_provider).state,
      children: _tabs.map((tab) => tab.page).toList(),
    );
  }
}

class _BottomNavBar extends HookWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: useProvider(_provider).state,
      items: _tabs.map((t) => t.item).toList(),
      onTap: (index) => _provider.read(context).state = index,
    );
  }
}
