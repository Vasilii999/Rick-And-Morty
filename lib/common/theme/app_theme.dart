import 'package:rick_and_morty/utils/presentation_exports.dart';

enum AppTheme { light, dark }

extension AppThemeExtension on AppTheme {
  ThemeData get themeData {
    switch (this) {
      case AppTheme.light:
        return lightTheme;
      case AppTheme.dark:
        return darkTheme;
    }
  }

  AppTheme toggle() => this == AppTheme.light ? AppTheme.dark : AppTheme.light;
}