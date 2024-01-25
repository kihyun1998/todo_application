import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/providers/theme_provider.dart';
import 'package:todo_application/style/foundation/app_theme.dart';

extension ThemeServiceExt on WidgetRef {
  AppTheme get theme => watch(themeProvider);
  AppColor get color => theme.color;
  AppFont get font => theme.font;
  ThemeData get themeData {
    return ThemeData(
      // 주색상 설정
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: theme.color.primary,
      ),
      scaffoldBackgroundColor: theme.color.background,
      navigationDrawerTheme: NavigationDrawerThemeData(
        backgroundColor: theme.color.primary,
      ),
    );
  }
}
