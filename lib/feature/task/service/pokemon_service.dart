import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:pokemonmobx/feature/task/model/pokemon_model.dart';
import 'package:pokemonmobx/feature/task/service/iPokemonService.dart';

part 'pokemon_service_endpoint.dart';

class PokemonService extends IPokemonService {
  PokemonService(Dio dio) : super(dio);

  @override
  Future<List<PokemonModel>> fetchAllPokemons() async {
    final response = await dio.get(_PokemonServiceEndpoint.POKEMONS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      print(data.runtimeType);

      if (data is List) {
        print("döndüm");
        return data.map((e) => PokemonModel.fromJson(e)).toList();
      }
    }

    return [];
  }
}
