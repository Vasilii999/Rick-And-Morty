import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/datasource/api/characters_api.dart';
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
    final prefix = _pagePrefix(page, status);
    try {
      final charList = await api.fetchListCharcters(page: page,status: status);
      //добавляем в кэш постранично
      for (var i = 0; i < charList.length; i++) {
        await charBox.put('$prefix-$i', charList[i]);
      }

      return charList;

    } catch (e) {
      //при ошибке (например нет интернета) возвращаем кэшированные данные
      //кидаем ошибку если кэша нет чтобы показать сообщение об ошибке
      final cached = charBox.keys
          .where((e) => e.toString().startsWith(prefix))
          .map((e) => charBox.get(e)!)
          .toList();

      if (cached.isEmpty) {
        throw Exception('Нет интернета и кэша');
      }

      return cached;
    }
  }

  String _pagePrefix(int page, String? status) =>
      'page_${page}_status_${status ?? "all"}';
}