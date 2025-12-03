import 'package:rick_and_morty/utils/presentation_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final _index = ValueNotifier<int>(0);
  bool _switch = false;

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
              FlutterSwitch(
                activeIcon: Assets.svgs.rickNight.svg(),
                activeColor: Colors.blue,
                inactiveColor: Colors.blueAccent,
                inactiveIcon: Assets.svgs.rickLight.svg(),
                inactiveSwitchBorder: Border.all(width: 1,color: Colors.black),
                activeSwitchBorder: Border.all(width: 1,color: Colors.black),
                activeToggleColor: Colors.transparent,
                inactiveToggleColor: Colors.transparent,
                toggleSize: 32,
                width: 70,
                height: 40,
                borderRadius: 30.0,
                showOnOff: false,
                value: _switch,
                onToggle: (val) {
                  setState(() {
                    _switch = val;
                  });
                },
              ),
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
