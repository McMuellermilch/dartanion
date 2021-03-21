import 'package:dart_an_ion/providers/providers.dart';
import 'package:dart_an_ion/widgets/CricketPlayerColumn.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CricketScreen extends HookWidget {
  static const routeName = '/cricket';
  @override
  Widget build(BuildContext context) {
    final playerListState = useProvider(playerListProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cricket"),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 70,
              child: Column(
                children: [
                  Container(
                    height: 20,
                    margin: EdgeInsets.all(15.0),
                  ),
                  Container(
                    height: 50,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var i = 20; i >= 15; i--)
                          Container(
                            child: Container(
                                height: 30,
                                child: Center(
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),
                            margin: EdgeInsets.all(10.0),
                          ),
                        Container(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Bull',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          margin: EdgeInsets.all(10.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            for (var player in playerListState)
              CricketPlayerColumn(player: player)
          ],
        ),
      ),
    );
  }
}
