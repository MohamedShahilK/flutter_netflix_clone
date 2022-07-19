import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/moviecard_row.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/special_moviecard_row.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/topbar_widget.dart';

const imageUrl =
    // "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lFhxNXEK0UpXXqSbhba83Zhl2uk.jpg";
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg";

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext ctx, bool newValue, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                // print(direction);
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                        child: Stack(
                          children: [
                            //Image
                            Container(
                              height: 550,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: NetworkImage(imageUrl),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            //All buttons
                            Positioned(
                              bottom: 15,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //MyList Button
                                  const CustomButton(
                                      title: 'My List', icon: Icons.add),

                                  //play button
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                      size: 35,
                                    ),
                                    label: const Text(
                                      'Play',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                        fontSize: 20,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                        const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 1),
                                      ),
                                    ),
                                  ),

                                  //Info button
                                  const CustomButton(
                                      title: 'Info', icon: Icons.info_outline)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const MovieCardRow(title: 'Realeased in the Past Year'),
                      const MovieCardRow(title: 'Trending Now'),
                      const SpecialMovieCardRow(
                          title: 'Top 10 TV Shows in India Today'),
                      const MovieCardRow(title: 'Tense Dramas'),
                      const MovieCardRow(title: 'South Indian Cinema'),
                      const SizedBox(height: 20)
                    ],
                  ),

                  //Top Bar
                  scrollNotifier.value
                      ? const TopBarWidget()
                      : const SizedBox(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        // const SizedBox(height: 10),
      ],
    );
  }
}
