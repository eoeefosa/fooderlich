import 'package:flutter/material.dart';

class madeClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        constraints: const BoxConstraints.expand(height: 450, width: 350),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/sunflex.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }
}
