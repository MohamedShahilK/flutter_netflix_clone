import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/FastLaughs/Widgets/videoactions.dart';

class ScreenFastLaughsPage extends StatelessWidget {
  const ScreenFastLaughsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) {
              return Stack(
                children: [
                  Container(
                    color: Colors.accents[index % Colors.accents.length],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //left side
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black.withOpacity(0.5),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.volume_off,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          //right side
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fwBl3J2aEXru6mrr9Xg8O99Iz2K.jpg",
                                    ),
                                    radius: 30,
                                  ),
                                ),
                                SizedBox(height: 10),
                                VideoActionWidget(
                                    icon: Icons.emoji_emotions_outlined,
                                    title: 'LOL'),
                                VideoActionWidget(
                                    icon: Icons.add, title: 'My List'),
                                VideoActionWidget(
                                    icon: Icons.share, title: 'Share'),
                                VideoActionWidget(
                                    icon: Icons.play_arrow, title: 'Play')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
