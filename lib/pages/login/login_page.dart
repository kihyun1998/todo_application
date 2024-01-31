import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/util/route/route_animation.dart';
import 'package:todo_application/util/route/route_path.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            RouteAnimation.animateWindowForMain(
              context,
              RoutePath.main,
            );
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
