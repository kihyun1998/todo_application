part of 'app_theme.dart';

class AppFont {
  AppFont({
    required this.font,
    required this.fontColor,
    required this.hintColor,
  });

  final Font font;
  final Color fontColor;
  final Color hintColor;

  late FontWeight light = font.light;
  late FontWeight regular = font.regular;
  late FontWeight semiBold = font.semiBold;

  /// headline
  late final TextStyle headline1 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.semiBold,
    fontSize: 28,
    color: fontColor,
  );
  late final TextStyle headline2 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.semiBold,
    fontSize: 24,
    color: fontColor,
  );
  late final TextStyle headline3 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.semiBold,
    fontSize: 21,
    color: fontColor,
  );
  late final TextStyle headline4 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.semiBold,
    fontSize: 19,
    color: fontColor,
  );
  late final TextStyle headline5 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.semiBold,
    fontSize: 17,
    color: fontColor,
  );
  late final TextStyle headline6 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.semiBold,
    fontSize: 15,
    color: fontColor,
  );

  // subtitle
  late final TextStyle subtitle1 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.regular,
    fontSize: 14,
    color: fontColor,
  );
  late final TextStyle subtitle2 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.regular,
    fontSize: 12,
    color: fontColor,
  );

  /// body
  late final TextStyle body1 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.regular,
    fontSize: 14,
    color: fontColor,
  );
  late final TextStyle hintBody1 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.regular,
    fontSize: 14,
    color: hintColor,
  );
  late final TextStyle body2 = TextStyle(
    height: 1.3,
    fontFamily: font.name,
    fontWeight: font.regular,
    fontSize: 12,
    color: fontColor,
  );
}
