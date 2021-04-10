import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:pokemonmobx/feature/core/network/network_manager.dart';
import 'package:pokemonmobx/feature/task/model/pokemon_model.dart';
import 'package:pokemonmobx/feature/task/service/iPokemonService.dart';
import 'package:pokemonmobx/feature/task/service/pokemon_service.dart';
part 'pokemon_view_model.g.dart';

class PokemonViewModel = _PokemonViewModelBase with _$PokemonViewModel;

abstract class _PokemonViewModelBase with Store {
  BuildContext? context;

  @observable
  List<PokemonModel> items = [];

  @observable
  LifeState lifeState = LifeState.IDDLE;
  late IPokemonService pokemonService;

  _PokemonViewModelBase() {
    pokemonService = PokemonService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context) {
    this.context = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    lifeState = LifeState.LOADING;
    items = await pokemonService.fetchAllPokemons();
    lifeState = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE,
}
