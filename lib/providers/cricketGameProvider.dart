import 'package:hooks_riverpod/hooks_riverpod.dart';

class Button {
  num points;
  List<num> finished;

  Button(num points) {
    this.points = points;
    finished = [];
  }

  Button.addPlayer(num points, List<num> finished) {
    this.points = points;
    this.finished = finished;
  }
}

class CricketButtonList extends StateNotifier<List<Button>> {
  CricketButtonList()
      : super([
          new Button(20),
          new Button(19),
          new Button(18),
          new Button(17),
          new Button(16),
          new Button(15),
          new Button(25)
        ]);

  void addFinish(num playerID, num btnPoints) {
    state = [
      for (final btn in state)
        if (btn.points == btnPoints)
          Button.addPlayer(btn.points, [...btn.finished, playerID])
        else
          btn,
    ];
  }

  List<num> getBtnFinishers(num btnPoints) {
    List<num> ret = [];
    for (final btn in state) {
      if (btn.points == btnPoints) {
        ret = btn.finished;
      }
    }
    return ret;
  }
}
