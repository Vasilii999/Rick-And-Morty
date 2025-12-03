import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/favorites_repository.dart';

final _favCharKey = 'favoritesList';

class FavoritesHiveRepository implements FavoritesRepository {
  final Box<List<Character>> box;

  FavoritesHiveRepository(this.box);

  @override
  Future<List<Character>> read() async {


    return box.get(_favCharKey) ?? [];
  }

  @override
  Future<void> save(Character char) async {
    final items = box.get(_favCharKey);

    if (items != null) {
      items.add(char);
      box.put(_favCharKey, items);
    }
  }
}