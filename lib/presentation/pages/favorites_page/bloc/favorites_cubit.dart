import 'package:rick_and_morty/presentation/pages/favorites_page/bloc/favorites_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository repository;
  String? currentStatus;

  FavoritesCubit(this.repository) : super(FavoritesState.initial());

  Future<void> loadFavorites() async {
    if (state == const FavoritesState.loading()) return;
    emit(const FavoritesState.loading());
    try {
      final favorite = await repository.readFavorite();
      emit(FavoritesState.data(favorites: _applyFilter(favorite)));
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }
  }

  List<Character> _applyFilter(List<Character> list) {
    if (currentStatus == null) return list;
    return list
        .where((e) => e.status.toLowerCase() == currentStatus!.toLowerCase())
        .toList();
  }

  Future<void> filterByStatus(StatusOption status) async {
    currentStatus = status == StatusOption.reset ? null : status.name;
    await loadFavorites();
  }

  Future<void> toggleFavorite(Character character) async {
    final currentState = state;
    if (currentState is! FavoritesStateData) return;
    final isFavorite = currentState.favorites.any((e) => e.id == character.id);
    try {
      if (isFavorite) {
        await repository.deleteFavorite(character.id);
      } else {
        await repository.addFavorite(character);
      }
      await loadFavorites();
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }
  }

  bool isFavorite(int id) {
    final current = state;
    if (current is! FavoritesStateData) return false;

    return current.favorites.any((e) => e.id == id);
  }
}
