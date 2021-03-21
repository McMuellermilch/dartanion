import 'package:dart_an_ion/providers/cricketGameProvider.dart';
import 'package:dart_an_ion/providers/gameProvider.dart';
import 'package:dart_an_ion/providers/playerProvider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerListProvider = StateNotifierProvider((ref) => new PlayerList());
final gameProvider = StateNotifierProvider((ref) => new GameModel());
final textProvider = StateProvider<String>((ref) => '0');
final cricketProvider = StateNotifierProvider((ref) => new CricketButtonList());
