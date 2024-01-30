import 'dart:async';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/util/route/route_path.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  void _animateWindowAndNavigate(BuildContext context) {
    const targetSize = Size(800, 800);
    const duration = Duration(milliseconds: 500); // 애니메이션 지속 시간
    const stepDuration = Duration(milliseconds: 10);
    int steps = duration.inMilliseconds ~/ stepDuration.inMilliseconds;
    double widthStep = (targetSize.width - appWindow.size.width) / steps;
    double heightStep = (targetSize.height - appWindow.size.height) / steps;

    Timer.periodic(stepDuration, (timer) {
      appWindow.size = Size(
        appWindow.size.width + widthStep,
        appWindow.size.height + heightStep,
      );

      if (appWindow.size.width >= targetSize.width ||
          appWindow.size.height >= targetSize.height) {
        timer.cancel();
        appWindow.size = targetSize; // 최종 크기를 강제로 설정해 주어야 합니다.

        // 창 크기 조정 후 페이지 전환
        Navigator.pushNamed(context, RoutePath.main);
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _animateWindowAndNavigate(context);
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
