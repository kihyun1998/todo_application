part of 'app_theme.dart';

enum AppMode {
  dark,
  light;

  static Map<String, dynamic> toJson(AppMode mode) {
    String modeString = mode.toString().split('.').last;
    return {'AppMode': modeString};
  }

  static AppMode toEnum(String modeString) {
    try {
      return AppMode.values
          .firstWhere((element) => element.toString().contains(modeString));
    } catch (e) {
      return AppMode.light;
    }
  }
}
