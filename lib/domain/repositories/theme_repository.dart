import 'package:rick_and_morty/common/common.dart';

abstract interface class ThemeRepository {
  Future<void> save(AppTheme theme);
  
  Future<AppTheme> read();
}