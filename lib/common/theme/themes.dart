
import 'package:rick_and_morty/utils/presentation_exports.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.light,
    onSurface: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.black,
    centerTitle: true,
  ),
  bottomNavigationBarTheme:
  BottomNavigationBarThemeData(backgroundColor: Colors.blueAccent),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.light,
    onSurface: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.black,
    centerTitle: true,
  ),
  bottomNavigationBarTheme:
  BottomNavigationBarThemeData(backgroundColor: Colors.blueAccent),
);