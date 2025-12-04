import 'package:rick_and_morty/data/models/character/character.dart';

abstract interface class FavoritesRepository {
  Future<void> save(Character char);

  Future<List<Character>> read();

  Future<void> delete(int id);

  Future<bool> exists(int id);
}