import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character/character.dart';
import 'package:rick_and_morty/data/models/info/info.dart';

part 'characters_page.g.dart';

@JsonSerializable()
class CharactersPage {
  final Info info;
  final List<Character> results;

  CharactersPage({
    required this.info,
    required this.results,
  });

  factory CharactersPage.fromJson(Map<String, dynamic> json) =>
      _$CharactersPageFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersPageToJson(this);

}