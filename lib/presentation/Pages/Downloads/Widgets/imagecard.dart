import 'dart:math';

import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.size,
    required this.imageList,
    this.angle = 0,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final Size size;
  final String imageList;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width * .75,
        width: size.width * .45,
        decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imageList),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}