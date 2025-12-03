import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_episode.g.dart';

@JsonSerializable()
class CharacterEpisode {
  final int id;
  final String name;
  @JsonKey(name: 'air_date')
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final DateTime created;

  CharacterEpisode({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  factory CharacterEpisode.fromJson(Map<String,dynamic> json) => _$CharacterEpisodeFromJson(json);

  Map<String, dynamic> toJson()=>_$CharacterEpisodeToJson(this);

}

