import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;
  int? candyCount;
  String? egg;
  double? spawnChance;
  double? avgSpawns;
  String? spawnTime;
  List<double>? multipliers;
  List<String>? weaknesses;

  PokemonModel();

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return _$PokemonModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$PokemonModelToJson(this);
  }
}
