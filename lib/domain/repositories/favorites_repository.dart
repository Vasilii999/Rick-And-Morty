import 'package:rick_and_morty/data/data.dart';

abstract interface class FavoritesRepository {
  Future<void> save(Character char);

  Future<List<Character>> read();
}