import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final List<String> classicModes = ['301', '501', '701'];
final List<String> cricketModes = ['Klassisch', 'Hardcore'];

class Game {
  String name;
  List<String> modes;
  String mode;
  Game({this.name, this.modes, this.mode});
}

class GameModel extends StateNotifier<Game> {
  GameModel([Game game])
      : super(game ??
            new Game(name: 'classic', modes: classicModes, mode: '301'));

  void setGame(String game) {
    switch (game) {
      case 'classic':
        {
          state = new Game(name: 'classic', modes: classicModes, mode: '301');
        }
        break;

      case 'cricket':
        {
          state =
              new Game(name: 'cricket', modes: cricketModes, mode: 'Klassisch');
        }
        break;

      default:
        {
          state = new Game();
        }
        break;
    }
  }

  void setMode(String mode) {
    Game tmp = state;
    tmp.mode = mode;
    state = tmp;
    print(state.mode);
  }
}
