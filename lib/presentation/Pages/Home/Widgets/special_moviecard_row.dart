import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/moviecard.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8ZbybiGYe8XM4WGmGlhF0ec5R7u.jpg";

class SpecialMovieCardRow extends StatelessWidget {
  const SpecialMovieCardRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Stack(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 50,
                            height: 200,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                image: NetworkImage(imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      projectingNumberText(index),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Positioned projectingNumberText(int index) {
    return Positioned(
      bottom: -35,
      left: 17,
      child: Stack(
        children: [
          Text(
            '${index + 1}',
            style: TextStyle(
                fontSize: 180,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Colors.white
                  ..strokeWidth = 2),
          ),
          Text(
            '${index + 1}',
            style: const TextStyle(fontSize: 180, color: Colors.black),
          )
        ],
      ),
    );
  }
}
