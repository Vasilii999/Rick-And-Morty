import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/favorites_repository.dart';
import 'package:rick_and_morty/presentation/pages/favorites_page/bloc/favorites_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository repository;

  FavoritesCubit(this.repository) : super(FavoritesState.initial());

  Future<void> loadFavorites() async {
    if(state == const FavoritesState.loading()) return;
    emit(const FavoritesState.loading());
    try {
      final favorite = await repository.readFavorite();
      emit(FavoritesState.data(favorites: favorite));
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }
  }

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

  Future<bool> isFavorite(int id) async {
    try {
      return await repository.existsFavorite(id);
    } catch (_) {
      return false;
    }
  }

  Future<void> toggleFavorite(Character character) async {
    try {
      final exists = await repository.existsFavorite(character.id);
      if(exists) {
        await repository.deleteFavorite(character.id);
      } else {
        await repository.addFavorite(character);
      }
      await loadFavorites();
    } catch (e) {
      emit(FavoritesState.error(message: e.toString()));
    }

  }

}
