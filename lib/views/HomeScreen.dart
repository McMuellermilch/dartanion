import 'package:dart_an_ion/widgets/AddPlayerCard.dart';
import 'package:dart_an_ion/widgets/CurrentPlayersCard.dart';
import 'package:dart_an_ion/widgets/SelectGameCard.dart';
import 'package:dart_an_ion/widgets/StartGameButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dartanion"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AddPlayerCard(),
            Expanded(
              child: CurrentPlayersCard(),
            ),
            Expanded(
              child: SelectGameCard(),
            ),
            StartGameButton(),
          ],
        ),
      ),
    );
  }
}
