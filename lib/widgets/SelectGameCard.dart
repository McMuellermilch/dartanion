import 'package:dart_an_ion/widgets/GameMenuCard.dart';
import 'package:dart_an_ion/widgets/GameModeMenuCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelectGameCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text('Spiel wählen'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GameMenuCard(
                        title: 'Classic',
                      ),
                    ),
                    Expanded(
                      child: GameMenuCard(
                        title: 'Cricket',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GameModeMenuCard(),
        ],
      ),
    );
  }
}
