import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_application/style/foundation/app_theme.dart';
import 'package:todo_application/style/theme/dart_theme.dart';
import 'package:todo_application/style/theme/light_theme.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return LightTheme();
  }

  void toggleTheme() {
    state = state.mode == AppMode.light ? DarkTheme() : LightTheme();
  }
}
