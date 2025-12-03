import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/common/common.dart';

part 'theme_state.freezed.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    required AppTheme theme,
  }) = _ThemeState;
}