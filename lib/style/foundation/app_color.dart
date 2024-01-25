part of 'app_theme.dart';

class AppColor {
  const AppColor({
    required this.surface,
    required this.background,
    required this.surface2,
    required this.text,
    required this.subtext,
    required this.hint,
    required this.hintContainer,
    required this.onHintContainer,
    required this.inactive,
    required this.inactiveContainer,
    required this.onInactiveContainer,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
  });

  /// Surface
  final Color background;
  final Color surface;
  final Color surface2;

  /// Text
  final Color text;
  final Color subtext;

  /// Hint
  final Color hint;
  final Color hintContainer;
  final Color onHintContainer;

  /// Inactive
  final Color inactive;
  final Color inactiveContainer;
  final Color onInactiveContainer;

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
}
