import 'package:dart_an_ion/views/HomeScreen.dart';
import 'package:dart_an_ion/views/CricketScreen.dart';
import 'package:dart_an_ion/views/ClassicScreen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ClassicScreen.routeName: (context) => ClassicScreen(),
        CricketScreen.routeName: (context) => CricketScreen(),
      },
    );
  }
}
