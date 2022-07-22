import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/moviecard.dart';

// const imageUrl =
//     "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8p9zXB7M78nZpm215zHfqpknMeM.jpg";

class MovieCardRow extends StatelessWidget {
  const MovieCardRow({
    Key? key,
    required this.title,
    required this.imageUrls,
  }) : super(key: key);

  final String title;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<HomeBloc>().add(const HomeEvent.all());
    // });
    return
        // final imageUrls = state.releasedPastYear.map((e) {
        //   return e.posterPath;
        // }).toList();
        // imageUrls.shuffle();
        // print(imageUrls);
        Padding(
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
                  // imageUrls.length,
                  10,
                  // (index) => MovieCard(imageUrl: imageUrls[index] ),
                  (index) {
                    if (imageUrls.isEmpty) {
                      return const MovieCard(imageUrl: '');
                    }
                    return MovieCard(imageUrl: imageUrls[index]);
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
