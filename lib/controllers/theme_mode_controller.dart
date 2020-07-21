import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class ThemeModeController extends StateNotifier<ThemeMode> {
  ThemeModeController._() : super(ThemeMode.dark);

  static final provider = StateNotifierProvider(
    (ref) => ThemeModeController._(),
  );

  void toggle() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}
