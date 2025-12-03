import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_origin.g.dart';

@JsonSerializable()
class CharacterOrigin {
  final String name;
  final String url;

  CharacterOrigin({required this.name, required this.url});


  factory CharacterOrigin.fromJson(Map<String,dynamic> json) => _$CharacterOriginFromJson(json);

  Map<String, dynamic> toJson()=>_$CharacterOriginToJson(this);

}

