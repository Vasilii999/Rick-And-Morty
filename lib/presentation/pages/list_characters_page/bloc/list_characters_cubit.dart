import 'package:rick_and_morty/domain/repositories/character_repository.dart';

import 'bloc.dart';
import '/utils/presentation_exports.dart';

class ListCharactersCubit extends Cubit<ListCharactersState> {
  final CharacterRepository repository;

  ListCharactersCubit({ListCharactersState? state, required this.repository})
      : super(state ?? const ListCharactersState());

  Future<void> loadNextPage() async {
    if (state.eventState == EventState.loading || !state.hasMore) return;
    emit(state.copyWith(eventState: EventState.loading));

    try {
      final newCharacters = await repository.getCharacter(state.page);

      final hasMore = newCharacters.isNotEmpty;

      emit(
        state.copyWith(
          eventState: EventState.data,
          character: [...state.character, ...newCharacters],
          page: state.page + 1,
          hasMore: hasMore,
          message: null,
        ),
      );
    }
    catch (e) {
      emit(state.copyWith(eventState: EventState.error, message: e.toString()));
    }
  }
}
