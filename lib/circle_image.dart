import "package:flutter/material.dart";

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20.0,
  }) : super(key: key);

  final ImageProvider? imageProvider;
  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        backgroundImage: imageProvider,
        radius: imageRadius - 5.0,
      ),
    );
  }
}
