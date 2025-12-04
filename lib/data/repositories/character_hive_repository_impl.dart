import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/datasources/api/characters_api.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/character_repository.dart';

class CharacterHiveRepositoryImpl implements CharacterRepository {
  final Box<Character> box;
  final CharactersApi api;

  CharacterHiveRepositoryImpl(this.api, this.box);

  @override
  Future<List<Character>> loadPage(int page) async {
    final cacheKey = 'page_$page';

    // final cached = box.values.where((e) => e.page == ).toList();
    final charactersPage = await api.getCharcters(page);
    return charactersPage.results;
  }
}

