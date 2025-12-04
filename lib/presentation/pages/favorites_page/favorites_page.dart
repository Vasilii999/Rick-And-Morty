import 'package:rick_and_morty/presentation/pages/widgets/character_card.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'bloc/bloc.dart';


class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {

  @override
  void initState() {
    super.initState();
    context.read<FavoritesCubit>().loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) => state.maybeWhen(
            loading: () =>  const Center(child: CircularProgressIndicator(),),
            error: (message) => Center(child: Text(message),),
            orElse:() =>  SizedBox.shrink(),
            data: (favorites) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: listPadding,
                      separatorBuilder: (context, index) => spacingV16,
                      itemCount: favorites.length,
                      itemBuilder: (context, index) {
                        if(favorites.isEmpty) {
                          return const Center(child: Text('Избранных нет'),);
                        }
                        return CharacterCard(character: favorites[index]);
                      },
                    ),
                  ),
                ],
              );
            },

          ),
      ),
    );
  }
}
