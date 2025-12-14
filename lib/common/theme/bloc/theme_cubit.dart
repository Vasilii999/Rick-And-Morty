import 'package:rick_and_morty/common/theme/bloc/theme_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeRepository repository;

  ThemeCubit(this.repository) : super(ThemeState(theme: AppTheme.light)) {
    loadTheme();
  }


  Future<void> loadTheme() async {
    final theme = await repository.read();
    emit(ThemeState(theme: theme));
  }

  Future<void> switchTheme() async {
    final newTheme = state.theme.toggle();
    await repository.save(newTheme);
    emit(ThemeState(theme: newTheme));
  }
}
