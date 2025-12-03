// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersPage _$CharactersPageFromJson(Map<String, dynamic> json) =>
    CharactersPage(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharactersPageToJson(CharactersPage instance) =>
    <String, dynamic>{'info': instance.info, 'results': instance.results};
