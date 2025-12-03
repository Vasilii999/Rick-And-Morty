import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'character_location.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class CharacterLocation {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;

  CharacterLocation({required this.name, required this.url});


  factory CharacterLocation.fromJson(Map<String,dynamic> json) => _$CharacterLocationFromJson(json);

  Map<String, dynamic> toJson()=>_$CharacterLocationToJson(this);

}

