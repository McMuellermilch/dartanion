import 'package:dart_an_ion/providers/providers.dart';
import 'package:dart_an_ion/widgets/GameModeMenuButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameModeMenuCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final gameState = useProvider(gameProvider.state);

    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Spielmodus wählen'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var mode in gameState.modes)
                Expanded(
                  child: GameModeMenuButton(title: mode, mode: gameState.mode),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
