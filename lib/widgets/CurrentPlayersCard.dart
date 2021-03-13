import 'package:dart_an_ion/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CurrentPlayersCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final playerListState = useProvider(playerListProvider.state);
    final playerList = useProvider(playerListProvider);

    return Container(
      child: GridView(
        primary: true,
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 6 / 2,
        ),
        children: playerListState
            .mapIndex((e, i) => Container(
                  child: Chip(
                      label: Container(width: 100, child: Text(e.name)),
                      deleteIcon: Icon(Icons.cancel),
                      onDeleted: () {
                        playerList.remove(e.id);
                      }),
                ))
            .toList(),
      ),
    );
  }
}

extension ExtendedIterable<E> on Iterable<E> {
  /// Like Iterable<T>.map but callback have index as second argument
  Iterable<T> mapIndex<T>(T f(E e, int i)) {
    var i = 0;
    return this.map((e) => f(e, i++));
  }

  void forEachIndex(void f(E e, int i)) {
    var i = 0;
    this.forEach((e) => f(e, i++));
  }
}
