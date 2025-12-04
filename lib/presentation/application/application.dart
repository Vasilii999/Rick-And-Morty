import 'package:rick_and_morty/common/theme/bloc/theme_cubit.dart';
import 'package:rick_and_morty/common/theme/bloc/theme_state.dart';
import 'package:rick_and_morty/domain/repositories/character_repository.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ListCharactersCubit(repository: di.get<CharacterRepository>()),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(di.get<ThemeRepository>()),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state.theme.themeData,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
