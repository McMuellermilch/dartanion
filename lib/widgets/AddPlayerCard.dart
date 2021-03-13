import 'package:dart_an_ion/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddPlayerCard extends HookWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final tmpProvider = useProvider(textProvider);
    final playerList = useProvider(playerListProvider);

    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: [
          Container(
            child: Text('Spieler hinzufügen'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Flexible(
                child: TextField(
                    controller: _controller,
                    onChanged: (text) {
                      tmpProvider.state = text;
                    }),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  if (tmpProvider.state != null) {
                    playerList.add(tmpProvider.state);
                    _controller.clear();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
