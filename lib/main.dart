import 'package:flutter/material.dart';
import 'package:github_repo_explorer/controllers/theme_mode_controller.dart';
import 'package:github_repo_explorer/pages/tab/main_tab.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: useProvider(ThemeModeController.provider.state),
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const MainTab(),
    );
  }
}
