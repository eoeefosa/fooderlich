import 'package:flutter/material.dart';

void main() {
  //1 everything in flutter is a widget runApp takes in the root widget
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  //2 every stateless widget must overide a build method
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply Home widget
    //3 composing a materialApp widget to give it a material design system look and feel
    return MaterialApp(
      // TODO: Add theme
      title: 'Fooderlich',
      // 4 scaffold wiget defines the layout and structure of the app
      home: Scaffold(
        // TODO: Style the title
        appBar: AppBar(title: const Text('Fooderlich')),
        // TODO: Style the body text
        body: const Center(child: Text('Let\'s get cooking 👩‍🍳')),
      ),
    );
  }
}
