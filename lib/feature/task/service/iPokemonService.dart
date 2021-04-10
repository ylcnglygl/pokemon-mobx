import 'package:dio/dio.dart';
import 'package:pokemonmobx/feature/task/model/pokemon_model.dart';

abstract class IPokemonService {
  final Dio dio;

  IPokemonService(this.dio);
  Future<List<PokemonModel>> fetchAllPokemons();
}
