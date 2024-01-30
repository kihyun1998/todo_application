import 'package:flutter/material.dart';

class NaviItem {
  final String title;
  final IconData icon;

  NaviItem({
    required this.title,
    required this.icon,
  });

  NaviItem copyWith({
    String? title,
    IconData? icon,
  }) {
    return NaviItem(
      title: title ?? this.title,
      icon: icon ?? this.icon,
    );
  }
}
