import 'package:rick_and_morty/utils/presentation_exports.dart';

enum AppTheme { light, dark }

extension AppThemeX on AppTheme {
  ThemeData get themeData {
    switch (this) {
      case AppTheme.light:
        return lightTheme;
      case AppTheme.dark:
        return darkTheme;
    }
  }

  AppTheme toggle() => this == AppTheme.light ? AppTheme.dark : AppTheme.light;

  static AppTheme fromString(String? themeName) {
    switch (themeName) {
      case 'dark':
        return AppTheme.dark;
      case 'light':
      default:
        return AppTheme.light;
    }
  }
}
