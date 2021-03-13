import 'package:dart_an_ion/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartGameButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final gameState = useProvider(gameProvider.state);
    final playerListState = useProvider(playerListProvider.state);

    return GestureDetector(
        onTap: () {
          print('/' + gameState.name.toLowerCase());
          if (playerListState.length > 0) {
            Navigator.pushNamed(context, '/' + gameState.name.toLowerCase());
          }
        },
        child: Container(
          height: 60,
          margin: EdgeInsets.all(7.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: playerListState.length == 0
                ? Colors.grey.shade800
                : Colors.green.shade500,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              'Spiel starten',
              style: TextStyle(
                  color: playerListState.length == 0
                      ? Colors.black.withOpacity(0.6)
                      : Colors.white),
            ),
          ),
        ));
  }
}
