// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterEpisode _$CharacterEpisodeFromJson(Map<String, dynamic> json) =>
    CharacterEpisode(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      airDate: json['air_date'] as String,
      episode: json['episode'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$CharacterEpisodeToJson(CharacterEpisode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.airDate,
      'episode': instance.episode,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };
