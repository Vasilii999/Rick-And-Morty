import 'package:rick_and_morty/data/datasources/api/characters_api.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/character_repository.dart';

class CharacterHiveRepositoryImpl implements CharacterRepository{
  final CharactersApi api;

  CharacterHiveRepositoryImpl(this.api);

  @override
  Future<List<Character>> loadPage(int page) async {
    final charactersPage = await api.getCharcters(page);
    return charactersPage.results;
  }
}