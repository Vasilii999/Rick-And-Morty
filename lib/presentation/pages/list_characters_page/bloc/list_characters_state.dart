import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'event_state.dart';


part 'list_characters_state.freezed.dart';

@freezed
abstract class ListCharactersState with _$ListCharactersState {
  const factory ListCharactersState({
    @Default(EventState.initial) EventState eventState,
    @Default(1) int page,
    @Default([]) List<Character> character,
    String? message,
    @Default(true)bool hasMore,
}) = _ListCharactersState;
}