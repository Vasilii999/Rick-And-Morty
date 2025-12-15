
import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/data.dart';
import 'package:rick_and_morty/data/models/characters_page/characters_page.dart';

class CharactersApi {
  final Dio dio;
  CharactersApi(this.dio);
  
  Future<List<Character>> fetchListCharcters({
    int page = 1,
    String? status,
}) async {
    final queryParameters = {
      'page': page.toString(),
      if (status != null) 'status': status,
    };

    final response = await dio.get(
      'https://rickandmortyapi.com/api/character/',
      queryParameters: queryParameters,
    );

    final CharactersPage data = CharactersPage.fromJson(response.data);
    
    return data.results.toList();
  }
  
}