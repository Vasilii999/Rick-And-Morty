import 'package:hive/hive.dart';
import 'package:rick_and_morty/common/theme/app_theme.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';

class ThemeHiveRepository implements ThemeRepository{
  final Box<String> themeBox;
  static const String themeKey = 'app_theme';

  ThemeHiveRepository(this.themeBox);


  @override
  Future<void> save(AppTheme theme) async {
    await themeBox.put(themeKey, theme.name);
  }


  @override
  Future<AppTheme> read() async {
    final themeName = themeBox.get(themeKey,defaultValue: 'light');
    return AppThemeX.fromString(themeName);
  }

}