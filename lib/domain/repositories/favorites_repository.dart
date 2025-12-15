import 'package:rick_and_morty/data/models/character/character.dart';

abstract interface class FavoritesRepository {
  Future<void> addFavorite(Character char);

  Future<List<Character>> readFavorite();

  Future<void> deleteFavorite(int id);
}