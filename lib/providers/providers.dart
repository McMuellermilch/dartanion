import 'package:dart_an_ion/providers/playerProvider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerListProvider = StateNotifierProvider((ref) => new PlayerList());
final textProvider = StateProvider<String>((ref) => '0');
