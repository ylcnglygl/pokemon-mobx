import 'package:flutter/material.dart';
import 'package:pokemonmobx/feature/task/view/pokemon_view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dotenv;

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: PokemonView(),
      ),
    );
  }
}
