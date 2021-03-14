import 'package:dart_an_ion/widgets/CricketHitCount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CricketButton extends HookWidget {
  final hitProvider = StateProvider<num>((ref) => 0);
  CricketButton({this.playerID, this.points});

  final num playerID;
  final num points;

  @override
  Widget build(BuildContext context) {
    final hitCount = useProvider(hitProvider);

    return Container(
      margin: EdgeInsets.all(10.0),
      child: GestureDetector(
          onTap: () {
            if (hitCount.state < 3) {
              hitCount.state += 1;
            }
          },
          child: CricketHitCount(hits: hitCount.state)),
    );
  }
}
