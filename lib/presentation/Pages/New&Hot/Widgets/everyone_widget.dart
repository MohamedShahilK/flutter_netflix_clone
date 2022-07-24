import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoon.dart';
import 'package:netflix_clone/domain/new_and_hot/model/everyones/everyones.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/comingsoon_list.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String movieName, posterPath, description;
  final EveryonesResultData movieData;
  const EveryonesWatchingWidget({
    Key? key,
    required this.movieName,
    required this.posterPath,
    required this.description,
    required this.movieData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 17, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movieName,
            style: GoogleFonts.dancingScript(
              fontSize: 25,
              letterSpacing: 1,
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(height: 15),
          VideoWidget(
            imageUrl: posterPath,
            movieID: movieData.id.toString(),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(
                flex: 20,
              ),
              Column(
                children: const [
                  Icon(
                    Icons.share,
                    size: 30,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Column(
                children: const [
                  Icon(
                    Icons.add,
                    size: 30,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Column(
                children: const [
                  Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                  Text(
                    "Play",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
