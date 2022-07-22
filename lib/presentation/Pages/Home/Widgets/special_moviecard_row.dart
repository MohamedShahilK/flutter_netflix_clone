import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/core/api/baseurl.dart';

// const imageUrl =
//     "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8ZbybiGYe8XM4WGmGlhF0ec5R7u.jpg";

class SpecialMovieCardRow extends StatelessWidget {
  const SpecialMovieCardRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.top10tvApi());
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final imageUrls = state.releasedPastYear
            .map((e) {
              return e.posterPath;
            })
            .toList()
            .sublist(10, 20);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      '$imageBaseUrlw500${imageUrls[index]}',
                                    ),
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
      },
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
