import 'package:dart_an_ion/widgets/AddPlayerCard.dart';
import 'package:dart_an_ion/widgets/CurrentPlayersCard.dart';
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
            )
          ],
        ),
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
