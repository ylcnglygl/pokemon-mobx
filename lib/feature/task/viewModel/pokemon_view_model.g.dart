// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonViewModel on _PokemonViewModelBase, Store {
  final _$itemsAtom = Atom(name: '_PokemonViewModelBase.items');

  @override
  List<PokemonModel> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<PokemonModel> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$lifeStateAtom = Atom(name: '_PokemonViewModelBase.lifeState');

  @override
  LifeState get lifeState {
    _$lifeStateAtom.reportRead();
    return super.lifeState;
  }

  @override
  set lifeState(LifeState value) {
    _$lifeStateAtom.reportWrite(value, super.lifeState, () {
      super.lifeState = value;
    });
  }

  final _$fetchItemsAsyncAction =
      AsyncAction('_PokemonViewModelBase.fetchItems');

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
items: ${items},
lifeState: ${lifeState}
    ''';
  }
}
