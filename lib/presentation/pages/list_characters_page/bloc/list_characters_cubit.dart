import 'package:rick_and_morty/domain/models/status_option.dart';
import 'package:rick_and_morty/domain/repositories/character_repository.dart';

import 'bloc.dart';
import '/utils/presentation_exports.dart';

class ListCharactersCubit extends Cubit<ListCharactersState> {
  final CharacterRepository repository;

  String? currentStatus;

  ListCharactersCubit({ListCharactersState? state, required this.repository})
    : super(state ?? const ListCharactersState());

  Future<void> loadNextPage() async {
    if (state.eventState == EventState.loading || !state.hasMore) return;
    emit(state.copyWith(eventState: EventState.loading));

    try {
      final newCharacters = await repository.getCharacter(
        page: state.page,
        status: currentStatus,
      );

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
    } catch (e) {
      emit(state.copyWith(eventState: EventState.error, message: e.toString()));
    }
  }

  Future<void> filterByStatus(StatusOption status) async {
    if(status == StatusOption.reset) {
      currentStatus = null;
    } else{
      currentStatus = status.name;
    }
    emit(const ListCharactersState());
    await loadNextPage();
  }
}
