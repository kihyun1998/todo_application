import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/extensions/themedata_ext.dart';
import 'package:todo_application/style/resources/button_padding.dart';
import 'package:todo_application/style/resources/button_size.dart';

class CustomIconButton extends ConsumerWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    double? iconSize,
    ButtonSize? width,
    ButtonSize? height,
    ButtonPadding? margin,
  })  : margin = margin ?? ButtonPadding.small,
        width = width ?? ButtonSize.small,
        height = height ?? ButtonSize.small,
        iconSize = iconSize ?? 20;

  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;
  final ButtonSize width;
  final ButtonSize height;
  final ButtonPadding margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 배경색은 primary고
    /// 크기는 하드코딩된 IconButton
    ///
    /// Todo: 크기 enum쓰거나 theme쓰거나 입력 받기(large, small, middle 등)
    /// IconSize도 마찬가지 large middle small로 구분
    /// 패딩도 default 패딩 정의해서 사용하기
    // return InkWell(
    //   onTap: onPressed,
    //   borderRadius: BorderRadius.circular(10),
    //   child: Ink(
    //     width: width.getSize(),
    //     height: height.getSize(),
    //     decoration: BoxDecoration(
    //       color: ref.theme.color.primary,
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Icon(
    //       icon,
    //       color: ref.theme.color.onPrimary,
    //       size: iconSize,
    //     ),
    //   ),
    // );
    return Container(
      width: width.getSize(),
      height: height.getSize(),
      margin: EdgeInsets.all(
        margin.getPadding() * 0.75,
      ),
      decoration: BoxDecoration(
        color: ref.theme.color.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: Icon(
            icon,
            color: ref.theme.color.onPrimary,
            size: iconSize,
          ),
        ),
      ),
    );
  }

  CustomIconButton copyWith({
    VoidCallback? onPressed,
    IconData? icon,
    double? iconSize,
    ButtonSize? width,
    ButtonSize? height,
    ButtonPadding? margin,
  }) {
    return CustomIconButton(
      onPressed: onPressed ?? this.onPressed,
      icon: icon ?? this.icon,
      iconSize: iconSize ?? this.iconSize,
      width: width ?? this.width,
      height: height ?? this.height,
      margin: margin ?? this.margin,
    );
  }
}
