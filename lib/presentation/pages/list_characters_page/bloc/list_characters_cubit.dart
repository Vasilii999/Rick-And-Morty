import '../../../../data/models/characters_page/characters_page.dart';
import 'bloc.dart';
import '/utils/presentation_exports.dart';

class ListCharactersCubit extends Cubit<ListCharactersState> {
  ListCharactersCubit({ListCharactersState? state})
    : super(state ?? const ListCharactersState());

  final baseUrl = 'https://rickandmortyapi.com/api';

  Future<CharactersPage> getPage({required int page}) async {
    final result = await dio.get('$baseUrl/character/?page=$page');
    final responseData = result.data;
    if (responseData is Map) {
      final json = Map<String, dynamic>.from(responseData);
      return CharactersPage.fromJson(json);
    } else {
      throw Exception(result.toString());
    }
  }

  Future<void> loadNextPage() async {
    if (state.eventState == EventState.loading) return;
    emit(state.copyWith(eventState: EventState.loading));
    try {
      final data = await getPage(page: state.page);
        final newCharacter = data.results;
        emit(
          state.copyWith(
            eventState: EventState.data,
            character: [...state.character, ...newCharacter],
            page: state.page + 1,
            message: null,
          ),
        );
    } catch (e) {
      emit(state.copyWith(eventState: EventState.error, message: e.toString()));
    }
  }
}
