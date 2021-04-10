// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return PokemonModel()
    ..id = json['id'] as int?
    ..num = json['num'] as String?
    ..name = json['name'] as String?
    ..img = json['img'] as String?
    ..type = (json['type'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..height = json['height'] as String?
    ..weight = json['weight'] as String?
    ..candy = json['candy'] as String?
    ..candyCount = json['candyCount'] as int?
    ..egg = json['egg'] as String?
    ..spawnChance = (json['spawnChance'] as num?)?.toDouble()
    ..avgSpawns = (json['avgSpawns'] as num?)?.toDouble()
    ..spawnTime = json['spawnTime'] as String?
    ..multipliers = (json['multipliers'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList()
    ..weaknesses = (json['weaknesses'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
}

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'img': instance.img,
      'type': instance.type,
      'height': instance.height,
      'weight': instance.weight,
      'candy': instance.candy,
      'candyCount': instance.candyCount,
      'egg': instance.egg,
      'spawnChance': instance.spawnChance,
      'avgSpawns': instance.avgSpawns,
      'spawnTime': instance.spawnTime,
      'multipliers': instance.multipliers,
      'weaknesses': instance.weaknesses,
    };
