

import 'package:rick_and_morty/common/theme/bloc/theme_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(theme: AppTheme.light));

  Future<void> switchTheme() async{

  }
}
