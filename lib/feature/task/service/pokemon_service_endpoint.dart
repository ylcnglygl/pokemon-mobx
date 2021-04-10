part of 'pokemon_service.dart';

enum _PokemonServiceEndpoint {
  POKEMONS,
}

extension PokemonServiceEndpointExtensions on _PokemonServiceEndpoint {
  String get rawValue {
    switch (this) {
      case _PokemonServiceEndpoint.POKEMONS:
        return '/pokemon';
    }
  }
}
