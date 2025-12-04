import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:rick_and_morty/presentation/pages/favorites_page/bloc/bloc.dart';

import '/utils/presentation_exports.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: defaultCardBorderRadius,
            color: Theme.of(context).cardTheme.color,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.all(16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 190.h,
                          width: 150.w,
                          child: ClipRRect(
                            borderRadius: defaultCardBorderRadius,
                            child: CachedNetworkImage(
                              imageUrl: character.image,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  Assets.svgs.rickPlaceholder.svg(),
                              errorWidget: (context, url, error) =>
                                  Assets.svgs.rickPlaceholder.svg(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            character.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 24),
                          ),
                          spacingV8,
                          Text(
                            'Gender: ${character.gender}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Status: ${character.status}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Species:${character.species}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Type: ${character.type}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Origin: ${character.origin.name}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Location: ${character.location.name}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: -10,
          child: BlocBuilder<FavoritesCubit, FavoritesState>(
            builder: (context, state) {
              final isFavorite = context.read<FavoritesCubit>().isFavoriteSync(character.id);
              return IconButton(
                icon: Icon(
                  Icons.star,
                  color: isFavorite ? Colors.yellow : white,
                ),
                onPressed: () {
                  context.read<FavoritesCubit>().toggleFavorite(character);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
