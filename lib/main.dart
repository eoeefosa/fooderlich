import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlich_theme.dart';

void main() {
  //1 everything in flutter is a widget runApp takes in the root widget
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  //2 every stateless widget must overide a build method
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    //3 composing a materialApp widget to give it a material design system look and feel
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      // 4 scaffold wiget defines the layout and structure of the app
      home: const Home(),
    );
  }
}
