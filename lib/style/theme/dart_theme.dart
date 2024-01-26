import 'package:todo_application/style/foundation/app_theme.dart';
import 'package:todo_application/style/resources/font.dart';
import 'package:todo_application/style/resources/palette.dart';

class DarkTheme implements AppTheme {
  @override
  AppMode mode = AppMode.dark;

  @override
  AppColor color = AppColor(
    surface: Palette.grey800,
    surface2: Palette.grey850,
    background: Palette.black.withOpacity(0.55), //배경색
    text: Palette.grey100,
    subtext: Palette.grey500,
    hint: Palette.grey600,
    hintContainer: Palette.grey770,
    onHintContainer: Palette.grey350,
    inactive: Palette.grey500,
    inactiveContainer: Palette.grey700,
    onInactiveContainer: Palette.grey400,
    primary: Palette.blue,
    onPrimary: Palette.white,
    secondary: Palette.grey,
    onSecondary: Palette.white,
  );

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
    hintColor: color.hint,
  );
}
