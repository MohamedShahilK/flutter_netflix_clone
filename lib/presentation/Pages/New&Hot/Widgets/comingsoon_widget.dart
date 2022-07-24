import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoon.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String movieName, posterPath, description, month, date, day;
  final ComingSoonResultData movieData;
  const ComingSoonWidget({
    Key? key,
    required this.movieName,
    required this.posterPath,
    required this.description,
    required this.month,
    required this.date,
    required this.day,
    required this.movieData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          //Whole Container
          Container(
            color: Colors.transparent,
            height: 480,
            child: Row(
              children: [
                //Left Side
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.transparent,
                    height: 480,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                month,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                date,
                                style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Right Side
                Flexible(
                  flex: 6,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //VideoWidget
                          VideoWidget(
                            imageUrl: posterPath,
                            movieID: movieData.id.toString(),
                          ),
                          const SizedBox(height: 10),

                          //Title and 2 Buttons
                          Row(
                            // mainAxisAlignment:
                            // MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  movieName,
                                  style: GoogleFonts.dancingScript(
                                    fontSize: 25,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),

                              //Remind me Button and Info Button
                              SizedBox(
                                width: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: const [
                                        Icon(Icons.notifications_outlined),
                                        Text(
                                          "Remind me",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Icon(Icons.info_outline),
                                        Text(
                                          "Info",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Coming on $day',
                            style: const TextStyle(fontSize: 18),
                          ),

                          //Description
                          SizedBox(
                            width: 250,
                            child: Text(
                              description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
