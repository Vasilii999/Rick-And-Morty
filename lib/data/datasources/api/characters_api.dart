
import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/models/characters_page/characters_page.dart';

class CharactersApi {
  final Dio dio;
  CharactersApi(this.dio);
  
  Future<CharactersPage> getCharcters(int page) async {
    final response = await dio.get('https://rickandmortyapi.com/api/character/?page=$page');

    final data = response.data;
    
    return CharactersPage.fromJson(Map<String, dynamic>.from(data));
  }
  
}