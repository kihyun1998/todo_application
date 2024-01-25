import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/extensions/themedata_ext.dart';

class CustomIconButton extends ConsumerWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.iconSize,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 배경색은 primary고
    /// 크기는 하드코딩된 IconButton
    ///
    /// Todo: 크기 enum쓰거나 theme쓰거나 입력 받기(large, small, middle 등)
    /// IconSize도 마찬가지 large middle small로 구분
    /// 패딩도 default 패딩 정의해서 사용하기
    return InkWell(
      onTap: onPressed,
      child: Ink(
        width: 120,
        height: 70,
        decoration: BoxDecoration(
          color: ref.theme.color.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: ref.theme.color.text,
          size: iconSize,
        ),
      ),
    );
  }
}
