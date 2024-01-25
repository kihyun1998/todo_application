import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_application/style/dart_theme.dart';
import 'package:todo_application/style/foundation/app_theme.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return DarkTheme();
  }
}
