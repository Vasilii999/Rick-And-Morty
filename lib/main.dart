import 'package:dio/dio.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'gen/hive_registrar.g.dart';
import 'presentation/application/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initModules();

  runApp(
    ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      child: Application(),
    ),
  );
}

Future<void> initModules() async {
  await Hive.initFlutter();

  // Hive.deleteBoxFromDisk('characters_cache_list');

  Hive.registerAdapters();

  await Hive.openBox<String>('theme');
  await Hive.openBox<Character>('favorites');
  await Hive.openBox<Character>('characters_cache');

  await initDIs();
}

Future<void> initDIs() async {
  di.registerSingleton<Dio>(dio);

  //API
  di.registerLazySingleton<CharactersApi>(() => CharactersApi(di<Dio>()));


  // repositories
  di.registerLazySingleton<CharacterRepository>(
        () => CharacterHiveRepositoryImpl(
      di<CharactersApi>(),
      Hive.box<Character>('characters_cache'),
    ),
  );

  di.registerLazySingleton<ThemeRepository>(
        () => ThemeHiveRepository(Hive.box('theme')),
  );

  di.registerLazySingleton<FavoritesRepository>(
        () => FavoritesRepositoryImpl(
      FavoritesHiveDataSource(Hive.box<Character>('favorites')),
    ),
  );
}
