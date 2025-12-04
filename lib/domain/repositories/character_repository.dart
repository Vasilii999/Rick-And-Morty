import 'package:rick_and_morty/data/data.dart';

abstract interface class CharacterRepository {
  Future<List<Character>> getCharacter({int page, String? status});
}