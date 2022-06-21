import "package:flutter/material.dart";
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = "Editor's choice";
  final String title = "The Art of Dough";
  final String description = "Learn how to make the perfect Bread";
  final String chef = "Osemwegie Efosa";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350.0, height: 450.0),
        // Box decorator describes how to draw a box
        decoration: const BoxDecoration(
          // decorationImage tell the box to paint an image
          image: DecorationImage(
            // AssetImage gives image link
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          // corner radius
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(children: [
          Text(category, style: FooderlichTheme.darkTextTheme.bodyText1),
          Positioned(
              top: 15,
              child:
                  Text(title, style: FooderlichTheme.darkTextTheme.bodyText1)),
          Positioned(
              bottom: 30,
              right: 0,
              child: Text(description,
                  style: FooderlichTheme.darkTextTheme.headline5)),
          Positioned(
              bottom: 10,
              right: 0,
              child:
                  Text(chef, style: FooderlichTheme.darkTextTheme.bodyText1)),
        ]),
      ),
    );
  }
}
