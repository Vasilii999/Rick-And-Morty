import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/event_state.dart';
import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/list_characters_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class ListCharactersCubit extends Cubit<ListCharactersState> {
  final CharacterRepository repository;
  String? currentStatus;

  ListCharactersCubit({ListCharactersState? state, required this.repository})
    : super(state ?? const ListCharactersState());

  Future<void> loadNextPage() async {
    if (state.eventState == EventState.loading) {
      return;
    }
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

  Future<void> refresh() async {
    emit(
      state.copyWith(
        eventState: EventState.initial,
        message: null,
        character: [],
        page: 1,
        hasMore: true,
      ),
    );
    await loadNextPage();
  }

  Future<void> filterByStatus(StatusOption status) async {
    if (status == StatusOption.reset) {
      currentStatus = null;
    } else {
      currentStatus = status.name;
    }
    emit(ListCharactersState(page: 1, character: [], hasMore: true));
    await loadNextPage();
  }
}
