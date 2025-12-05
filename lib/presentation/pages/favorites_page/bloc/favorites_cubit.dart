import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/models/status_option.dart';
import 'package:rick_and_morty/domain/repositories/favorites_repository.dart';
import 'package:rick_and_morty/presentation/pages/favorites_page/bloc/favorites_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository repository;
  final Set<int> _favoriteIds = {};
  String? currentStatus;

  FavoritesCubit(this.repository) : super(FavoritesState.initial());

  Future<void> loadFavorites() async {
    if(state == const FavoritesState.loading()) return;
    emit(const FavoritesState.loading());

    try {
      final favorite = await repository.readFavorite();
      _favoriteIds..clear()..addAll(favorite.map((e) => e.id));
      final filtered = _applyFilter(favorite);

      emit(FavoritesState.data(favorites: filtered));
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }
  }

  List<Character> _applyFilter(List<Character> list) {
    if (currentStatus == null) return list;

    return list.where((c) =>
    c.status.toLowerCase() == currentStatus!.toLowerCase()
    ).toList();
  }

  Future<void> filterByStatus(StatusOption status) async {
    if (status == StatusOption.reset) {
      currentStatus = null;
    } else {
      currentStatus = status.name;
    }

    await loadFavorites(); // просто перегружаем с новым фильтром
  }

  Future<void> toggleFavorite(Character character) async {
      if(_favoriteIds.contains(character.id)) {
        _favoriteIds.remove(character.id);
        repository.deleteFavorite(character.id);
      } else {
        _favoriteIds.add(character.id);
        repository.addFavorite(character);
      }
      await loadFavorites();
  }

  bool isFavoriteSync(int id) => _favoriteIds.contains(id);

  Future<void> addFavorite(Character character) async{
    if(state == const FavoritesState.loading()) return;
    emit(const FavoritesState.loading());
    try {
      await repository.addFavorite(character);
      await loadFavorites();
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }
  }

  Future<void> removeFavorite(int id) async{
    try {
      await repository.deleteFavorite(id);
      await loadFavorites();
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }
  }


}
