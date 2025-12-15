import 'package:rick_and_morty/data/datasource/local/favorites_hive_data_source.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository{
  final FavoritesHiveDataSource hiveData;
  FavoritesRepositoryImpl(this.hiveData);

  @override
  Future<List<Character>> readFavorite() => hiveData.read();

  @override
  Future<void> addFavorite(Character char) => hiveData.save(char);

  @override
  Future<void> deleteFavorite(int id) async => hiveData.delete(id);

}