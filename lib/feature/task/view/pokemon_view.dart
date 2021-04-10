import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokemonmobx/feature/task/viewModel/pokemon_view_model.dart';

class PokemonView extends StatelessWidget {
  final _viewModel = PokemonViewModel();

  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return Visibility(
              visible: _viewModel.lifeState == LifeState.LOADING,
              child: CircularProgressIndicator());
        }),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: _viewModel.items.length,
            itemBuilder: (context, index) {
              print(_viewModel.items[index].img);
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(_viewModel.items[index].img.toString()),
                ),
                title: Text(_viewModel.items[index].name.toString()),
                subtitle: Text(_viewModel.items[index].num.toString()),
              );
            });
      }),
    );
  }
}
