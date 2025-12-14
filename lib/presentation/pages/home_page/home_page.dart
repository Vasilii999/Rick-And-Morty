import 'package:rick_and_morty/presentation/pages/favorites_page/bloc/favorites_cubit.dart';
import 'package:rick_and_morty/presentation/pages/home_page/widgets/widgets.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/list_characters_cubit.dart';

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
              FilterStatus(
                currentStatus: context.read<ListCharactersCubit>().currentStatus,
                  onSelected: (status) {
                  context.read<ListCharactersCubit>().filterByStatus(status);
                  context.read<FavoritesCubit>().filterByStatus(status);
                  }),
            ],
          ),
          body: IndexedStack(index: index, children: _pages),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => _index.value = index,
            unselectedItemColor: Colors.grey,
            selectedItemColor: purple,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
            ],
          ),
        );
      },
    );
  }
}


