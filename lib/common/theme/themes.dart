
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
    backgroundColor: Colors.blue[400],
    foregroundColor: Colors.black,
    centerTitle: true,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
  ),
  cardTheme: CardThemeData(color: Colors.blue,),
  bottomNavigationBarTheme:
  BottomNavigationBarThemeData(backgroundColor: Colors.blue[400]),
  popupMenuTheme: PopupMenuThemeData(
    textStyle: TextStyle(color: Colors.black),
    color: white,
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.grey[900],
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
    onSurface: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue[900],
    foregroundColor: white,
    centerTitle: true,
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
  cardTheme: CardThemeData(color: Colors.blue[800],),
  bottomNavigationBarTheme:
  BottomNavigationBarThemeData(backgroundColor: Colors.blue[900]),
  popupMenuTheme: PopupMenuThemeData(
    textStyle: TextStyle(color: white),
    color: Colors.blue[900],
  ),
);