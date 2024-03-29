import 'package:flutter/material.dart';
import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 26,
              ),
              const SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.authorName,
                      style: FooderlichTheme.lightTextTheme.headline2),
                  Text(widget.title, style: FooderlichTheme.lightTextTheme.headline3),
                ],
              ),
            ],
          ),
          IconButton(
            // it checks if the user has favorited the recipe card
            icon: Icon(_isFavorited? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            // it changes the color to give the app more life
            color: Colors.red[400],
            onPressed: () {
              //when the user presses the IconButton, it toggles the _isfavorited state via a call to setState()
              setState((){
                _isFavorited=!_isFavorited;
              }
              );
            },
          )
        ],
      ),
    );
  }
}
