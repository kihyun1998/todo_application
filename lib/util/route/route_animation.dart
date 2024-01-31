import 'dart:async';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/const.dart';

class RouteAnimation {
  static void animateWindowForMain(BuildContext context, String routePath) {
    const targetSize = mainPageSize; // 정의된 main page size
    const duration = Duration(milliseconds: 500); // 애니메이션 지속 시간
    const curve = Curves.easeOutExpo; // 보다 부드러운 애니메이션을 위한 커브
    final numFrames = duration.inMilliseconds ~/ 16; // 약 60fps

    List<Size> frameSizes = List.generate(numFrames, (index) {
      double progress = (index / numFrames);
      double animatedValue = curve.transform(progress);
      double width = appWindow.size.width +
          ((targetSize.width - appWindow.size.width) * animatedValue);
      double height = appWindow.size.height +
          ((targetSize.height - appWindow.size.height) * animatedValue);
      return Size(width, height);
    });

    int currentFrame = 0;
    Timer.periodic(const Duration(milliseconds: 16), (timer) {
      Size newSize = frameSizes[currentFrame];
      appWindow.size = newSize;

      currentFrame++;
      if (currentFrame >= frameSizes.length) {
        timer.cancel();
        appWindow.size = targetSize;

        // 창 크기 조정 후 페이지 전환
        Navigator.pushNamed(context, routePath);
      }
    });
  }
}
