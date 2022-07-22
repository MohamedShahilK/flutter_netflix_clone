import 'package:flutter/material.dart';
import 'package:netflix_clone/core/api/baseurl.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage('$imageBaseUrlw500$imageUrl'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
