import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/providers/theme_provider.dart';
import 'package:todo_application/style/foundation/app_theme.dart';

extension ThemeServiceExt on WidgetRef {
  AppTheme get theme => watch(themeProvider);
  AppColor get color => theme.color;
  AppDeco get deco => theme.deco;
  AppFontType get font => theme.font;
  ThemeData get themeData {
    return ThemeData(
      // 주색상 설정
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: theme.color.primary,
      ),
      scaffoldBackgroundColor: theme.color.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.color.surface2,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: theme.color.text,
        ),
        titleTextStyle: theme.font.headline2.copyWith(
          color: theme.color.text,
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: theme.color.surface2,
        indicatorColor: theme.color.primary,
        selectedIconTheme: IconThemeData(
          color: theme.color.onPrimary,
        ),
        unselectedIconTheme: IconThemeData(
          color: theme.color.unselected,
        ),
        unselectedLabelTextStyle: theme.font.subtitle2.copyWith(
          color: theme.color.unselected,
        ),
        selectedLabelTextStyle: theme.font.headline6.copyWith(
          color: theme.color.text,
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: theme.color.surface,
      ),
    );
  }
}