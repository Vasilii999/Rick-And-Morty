
import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/data.dart';
import 'package:rick_and_morty/data/models/characters_page/characters_page.dart';

class CharactersApi {
  final Dio dio;
  CharactersApi(this.dio);
  
  Future<List<Character>> fetchListCharcters(int page) async {
    final response = await dio.get('https://rickandmortyapi.com/api/character/?page=$page');

    final CharactersPage data = CharactersPage.fromJson(response.data);

    final character = data.results.toList();
    
    return character;
  }
  
}