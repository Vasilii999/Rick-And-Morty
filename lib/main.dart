import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:rick_and_morty/data/data.dart';
import 'package:rick_and_morty/data/datasources/local/favorites_hive_repository.dart';
import 'package:rick_and_morty/data/datasources/local/theme_hive_repository.dart';
import 'package:rick_and_morty/domain/repositories/favorites_repository.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

import 'data/models/character/character.dart';
import 'gen/hive_registrar.g.dart';
import 'presentation/application/application.dart';

void main() async{
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

  await Hive.openBox<String>('theme');
  await Hive.openBox<Character>('favorites');

  Hive.registerAdapters();

  await initDIs();

}

Future<void> initDIs() async {
  di.registerLazySingleton<ThemeRepository>(() => ThemeHiveRepository(Hive.box('theme')));
  di.registerLazySingleton<FavoritesRepository>(() => FavoritesHiveRepository(Hive.box('favorites')));
}
