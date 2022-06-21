import "package:flutter/material.dart";

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
        constraints: const BoxConstraints.expand(width: 350, height: 500),
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
      ),
    );
  }
}
