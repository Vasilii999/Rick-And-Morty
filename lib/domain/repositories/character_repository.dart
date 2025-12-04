import 'package:rick_and_morty/data/data.dart';

abstract interface class CharacterRepository {
  Future<void> saveCharsLocal(List<Character> list, int page);

  Future<List<Character>> loadPage(int page);
}