import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/event_state.dart';
import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/list_characters_cubit.dart';
import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/list_characters_state.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'package:rick_and_morty/presentation/pages/widgets/widgets.dart';

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
      body: BlocConsumer<ListCharactersCubit, ListCharactersState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.eventState == EventState.loading &&
              state.character.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.eventState == EventState.error && state.character.isEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text('Ошибка загрузки данных, повторите попытку'),
                ),
                TextButton(
                  onPressed: () {
                    context.read<ListCharactersCubit>().loadNextPage();
                  },
                  child: Text('Повторить'),
                ),
              ],
            );
          }
          if (state.character.isEmpty) {
            return Center(child: Text(state.message.toString()));
          }
          final items = state.character;
          return RefreshIndicator(
            onRefresh: () => context.read<ListCharactersCubit>().refresh(),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    controller: _scrollController,
                    padding: listPadding,
                    separatorBuilder: (context, index) => spacingV16,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: items.length + (state.hasMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index >= items.length) {
                        if (state.eventState == EventState.error &&
                            state.hasMore) {
                          return Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ошибка загрузки данных, повторите попытку',
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context
                                          .read<ListCharactersCubit>()
                                          .loadNextPage();
                                    },
                                    child: Text('Повторить'),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }
                        if (state.eventState == EventState.loading) {
                          return Column(
                            children: [
                              Center(child: CircularProgressIndicator()),
                              spacingV16,
                            ],
                          );
                        }
                        return const SizedBox.shrink();
                      }
                      final item = items[index];
                      return Column(
                        children: [
                          CharacterCard(character: item),
                          if (index == items.length - 1 &&
                              state.eventState != EventState.error)
                            Column(children: [SizedBox(height: 58.h)]),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
