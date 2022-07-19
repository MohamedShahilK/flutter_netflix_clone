import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/moviecard.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8p9zXB7M78nZpm215zHfqpknMeM.jpg";

class MovieCardRow extends StatelessWidget {
  const MovieCardRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => const MovieCard(imageUrl: imageUrl),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
