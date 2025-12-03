import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:rick_and_morty/data/models/character_location/character_location.dart';
import 'package:rick_and_morty/data/models/character_origin/character_origin.dart';

part 'character.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class Character {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String status;
  @HiveField(3)
  final String species;
  @HiveField(4)
  final String type;
  @HiveField(5)
  final String gender;
  @HiveField(6)
  final CharacterOrigin origin;
  @HiveField(7)
  final CharacterLocation location;
  @HiveField(8)
  final String image;
  @HiveField(9)
  final List<String> episode;
  @HiveField(10)
  final String url;
  @HiveField(11)
  final DateTime created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
