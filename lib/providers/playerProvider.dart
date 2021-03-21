import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class Player {
  num id;
  String name;
  num points;
  Player({this.id, this.name, this.points});
}

class PlayerList extends StateNotifier<List<Player>> {
  PlayerList([List<Player> players]) : super(players ?? []);

  void add(String name) {
    state = [...state, new Player(id: state.length + 1, name: name, points: 0)];
  }

  void remove(num id) {
    state = state.where((player) => player.id != id).toList();
  }

  num getPoints(num id) {
    num ret = 0;
    for (final p in state) {
      if (p.id == id) {
        ret = p.points;
      }
    }
    return ret;
  }

  void addPoints(num id, num points) {
    state = [
      for (final p in state)
        if (p.id == id)
          Player(id: id, name: p.name, points: p.points + points)
        else
          p
    ];
  }
}
