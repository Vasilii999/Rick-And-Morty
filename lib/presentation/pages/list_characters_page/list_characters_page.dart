import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'bloc/bloc.dart';
import 'widgets/character_card.dart';

class ListCharactersPage extends StatefulWidget {
  const ListCharactersPage({super.key});

  @override
  State<ListCharactersPage> createState() => _ListCharactersPageState();
}

class _ListCharactersPageState extends State<ListCharactersPage> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ListCharactersCubit>().loadNextPage();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<ListCharactersCubit>().loadNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListCharactersCubit, ListCharactersState>(
        builder: (context, state) {
          if(state.eventState == EventState.loading && state.character.isEmpty){
            return Center(child: CircularProgressIndicator());
          }
          if(state.eventState == EventState.error){
            return Center(child: Text(state.message.toString()),);
          }
            final items = state.character;
            return Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    controller: _scrollController,
                    padding: listPadding,
                    separatorBuilder: (context, index) => spacingV16,
                    itemBuilder: (context, index) {
                      if(index >= state.character.length){
                       return Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      final item = items[index];
                      return CharacterCard(character: item);
                    },
                    itemCount: items.length + (state.eventState == EventState.loading ? 1 : 0),
                  ),
                ),
              ],
            );
          }
      ),
    );
  }
}
