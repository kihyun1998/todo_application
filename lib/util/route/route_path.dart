import 'package:flutter/material.dart';
import 'package:todo_application/pages/login/login_page.dart';
import 'package:todo_application/pages/main/main_page.dart';

abstract class RoutePath {
  static const String main = 'main';
  static const String login = 'login';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late final Widget page;
    switch (settings.name) {
      case RoutePath.login:
        page = const LoginPage();
        break;
      case RoutePath.main:
        page = const MainPage();
        break;
    }
    // return MaterialPageRoute(builder: (context) => page);
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
