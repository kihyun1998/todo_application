import 'package:todo_application/style/foundation/app_theme.dart';
import 'package:todo_application/style/resources/font.dart';
import 'package:todo_application/style/resources/palette.dart';

class LightTheme implements AppTheme {
  @override
  AppMode mode = AppMode.light;

  @override
  AppColor color = AppColor(
    surface: Palette.white,
    surface2: Palette.grey200,
    background: Palette.grey200, //배경색
    text: Palette.black,
    subtext: Palette.grey700,
    hint: Palette.grey300,
    hintContainer: Palette.grey150,
    onHintContainer: Palette.grey500,
    inactive: Palette.grey400,
    inactiveContainer: Palette.grey250,
    onInactiveContainer: Palette.white,
    primary: Palette.blue,
    onPrimary: Palette.white,
    secondary: Palette.grey,
    onSecondary: Palette.white,
  );

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
  );
}
