import 'package:rick_and_morty/presentation/pages/home_page/widgets/theme_switch.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final _index = ValueNotifier<int>(0);

  final List<Widget> _pages = [
    const ListCharactersPage(),
    const FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _index,
      builder: (context, index, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(_index.value == 0 ? 'Персонажи' : 'Избранные'),
            actions: [
              ThemeSwitch(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.compare_arrows_outlined),
              ),
            ],
          ),
          body: IndexedStack(index: index, children: _pages),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => _index.value = index,
            unselectedItemColor: purple,
            selectedItemColor: green,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Персонажи',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Избранное',
              ),
            ],
          ),
        );
      },
    );
  }
}
