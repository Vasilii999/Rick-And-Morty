import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/datasources/api/characters_api.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/character_repository.dart';

class CharacterHiveRepositoryImpl implements CharacterRepository {
  final Box<Character> charBox;
  final CharactersApi api;

  CharacterHiveRepositoryImpl(this.api, this.charBox);


  @override
  Future<List<Character>> getCharacter({
    int page = 1,
    String? status,
}) async {
    var charList = <Character>[];
    try {
      charList = await api.fetchListCharcters(page: page,status: status);

      final charMap = {for (var e in charList) e.id: e};
      await charBox.putAll(charMap);
    } catch (e) {
      charList = charBox.values.toList();
    }
    return charList;
  }
}

//if (page == 1) {
//         return charBox.values.toList();
//       } else {
//         return [];
//       }