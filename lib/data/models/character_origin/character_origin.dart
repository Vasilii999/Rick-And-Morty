import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'character_origin.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class CharacterOrigin {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;

  CharacterOrigin({required this.name, required this.url});


  factory CharacterOrigin.fromJson(Map<String,dynamic> json) => _$CharacterOriginFromJson(json);

  Map<String, dynamic> toJson()=>_$CharacterOriginToJson(this);

}

