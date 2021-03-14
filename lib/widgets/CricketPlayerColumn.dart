import 'package:dart_an_ion/providers/playerProvider.dart';
import 'package:dart_an_ion/providers/providers.dart';
import 'package:dart_an_ion/widgets/CricketButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CricketPlayerColumn extends HookWidget {
  CricketPlayerColumn({this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    final playerListState = useProvider(playerListProvider.state);
    final playerList = useProvider(playerListProvider);

    return Expanded(
      child: Column(
        children: [
          Container(
            height: 20,
            margin: EdgeInsets.all(15.0),
            child: Text(
              player.name.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            height: 50,
            child: Text(
              '0',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                for (var i = 20; i >= 15; i--)
                  CricketButton(
                    playerID: player.id,
                    points: i,
                  ),
                CricketButton(
                  playerID: player.id,
                  points: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
