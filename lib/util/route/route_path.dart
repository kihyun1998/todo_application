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

    // return PageRouteBuilder(
    //   pageBuilder: (context, animation, secondaryAnimation) => page,
    //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //     return FadeTransition(
    //       opacity: animation,
    //       child: child,
    //     );
    //   },
    //   transitionDuration: const Duration(seconds: 1),
    // );

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.elasticOut;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 1000),
    );
  }
}
