import 'package:rick_and_morty/utils/presentation_exports.dart';
import 'package:rick_and_morty/presentation/pages/list_characters_page/bloc/bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ListCharactersCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        home: HomePage(),
      ),
    );
  }
}