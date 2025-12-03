import 'package:hive_flutter/hive_flutter.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

import 'presentation/application/application.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

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
  
  await Hive.openBox('theme');
  await Hive.openBox('favorites');

  await initDIs();

}

Future<void> initDIs() async {
  //di.registerLazySingleton<>(() => ,);
}
