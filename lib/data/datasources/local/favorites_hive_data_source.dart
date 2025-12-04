import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/models/character/character.dart';

class FavoritesHiveDataSource {
  final Box<Character> box;
  FavoritesHiveDataSource(this.box);

  Future<List<Character>> read() async {
    return box.values.toList();
  }

  Future<void> save(Character char) async {
    await box.put(char.id, char);
    }

    Future<void> delete(int id) async {
    await box.delete(id);
    }

    Future<bool> exists(int id) async {
    return box.containsKey(id);
    }

  }
