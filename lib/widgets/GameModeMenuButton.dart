import 'package:dart_an_ion/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameModeMenuButton extends HookWidget {
  GameModeMenuButton({this.title, this.mode});

  final String title;
  final String mode;

  @override
  Widget build(BuildContext context) {
    final game = useProvider(gameProvider);

    return GestureDetector(
      onTap: () {
        game.setMode(title);
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: mode == title ? Colors.red : Color(0x26ABABAB),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
