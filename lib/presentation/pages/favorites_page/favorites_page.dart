import 'package:rick_and_morty/utils/presentation_exports.dart';


class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Избранное'),
        Container(
          decoration: BoxDecoration(
              borderRadius: defaultCardBorderRadius,
              color: blue,
          ),
          height: 120,
          width: double.infinity,
          child: Column(children: [Text('Персонаж')]),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: defaultCardBorderRadius,
              color: pink
          ),
          height: 120,
          width: double.infinity,
          child: Column(children: [Text('Персонаж')]),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: defaultCardBorderRadius,
              color: green
          ),
          height: 120,
          width: double.infinity,
          child: Column(children: [Text('Персонаж')]),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: defaultCardBorderRadius,
              color: greenLime
          ),
          height: 120,
          width: double.infinity,
          child: Column(children: [Text('Персонаж')]),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: defaultCardBorderRadius,
              color: purple
          ),
          height: 120,
          width: double.infinity,
          child: Column(children: [Text('Персонаж')]),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: defaultCardBorderRadius,
              color: yellow
          ),
          height: 120,
          width: double.infinity,
          child: Column(children: [Text('Персонаж')]),
        ),
      ],),
    );
  }
}
