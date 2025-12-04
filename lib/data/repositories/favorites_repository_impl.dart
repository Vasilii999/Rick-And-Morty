import 'package:rick_and_morty/data/datasources/local/favorites_hive_data_source.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository{
  final FavoritesHiveDataSource hiveData;
  FavoritesRepositoryImpl(this.hiveData);

  @override
  Future<List<Character>> read() => hiveData.read();


  @override
  Future<void> save(Character char) => hiveData.save(char);

  @override
  Future<void> delete(int id) async => hiveData.delete(id);

  @override
  Future<bool> exists(int id) async => hiveData.exists(id);

}