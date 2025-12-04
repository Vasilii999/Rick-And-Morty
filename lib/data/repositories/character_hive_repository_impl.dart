import 'package:dio/dio.dart';
import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/datasources/api/characters_api.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/character_repository.dart';
import 'package:rick_and_morty/data/models/characters_page/characters_page.dart';

class CharacterHiveRepositoryImpl implements CharacterRepository {
  final Box box;
  final CharactersApi api;

  CharacterHiveRepositoryImpl(this.api, this.box);

  @override
  Future<List<Character>> loadPage(int page) async {
    final cacheKey = 'page_$page';
    final cached = box.get(cacheKey);
    final cacheList = (cached as List?)?.cast<Character>();

    CharactersPage? apiList;
    try {
      apiList = await api.getCharcters(page);
    }
    on DioException catch(e) {
      apiList = null;
    }
    catch (e) {
      rethrow;
    }

    //TODO: добавить логику сохраниния кеша
    // Пока что перезаписываем кеш каждый раз
    if (apiList != null) {
      await saveCharsLocal(apiList.results, page);
    }

    if (apiList?.results == null && cacheList == null) {
      throw DioException.connectionError(requestOptions: RequestOptions(), reason: 'NO INTERNET, NO CACHE');
    }

    return apiList?.results ?? cacheList ?? [];
  }

  @override
  Future<void> saveCharsLocal(List<Character> list, int page) async {
    final cacheKey = 'page_$page';
    box.put(cacheKey, list);
  }
}

