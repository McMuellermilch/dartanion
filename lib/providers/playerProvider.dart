import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class Player {
  num id;
  String name;
  Player({this.id, this.name});
}

class PlayerList extends StateNotifier<List<Player>> {
  PlayerList([List<Player> players]) : super(players ?? []);

  void add(String name) {
    state = [
      ...state,
      new Player(
        id: state.length + 1,
        name: name,
      )
    ];
  }

  void remove(num id) {
    state = state.where((player) => player.id != id).toList();
  }
}
