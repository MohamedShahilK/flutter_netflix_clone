import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/presentation/Pages/Home/Widgets/mainheader_widget.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.all());
    });
    final ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext ctx, bool newValue, _) {
            //scrolling controller
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
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      final imageUrls = state.releasedPastYear.map((e) {
                        return e.posterPath;
                      }).toList();
                      return ListView(
                        shrinkWrap: true,
                        children: [
                          const MainHeaderWidget(),
                          MovieCardRow(
                            title: 'Realeased in the Past Year',
                            imageUrls: imageUrls,
                          ),
                          MovieCardRow(
                            title: 'Trending Now',
                            imageUrls: imageUrls,
                          ),
                          const SpecialMovieCardRow(
                              title: 'Top 10 TV Shows in India Today'),
                          MovieCardRow(
                            title: 'Tense Dramas',
                            imageUrls: imageUrls,
                          ),
                          MovieCardRow(
                            title: 'South Indian Cinema',
                            imageUrls: imageUrls,
                          ),
                          const SizedBox(height: 20)
                        ],
                      );
                    },
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
