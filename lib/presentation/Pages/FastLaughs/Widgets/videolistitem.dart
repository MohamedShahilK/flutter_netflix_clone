import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fastlaugh/fastlaugh_bloc.dart';
import 'package:netflix_clone/core/api/baseurl.dart';
import 'package:netflix_clone/domain/downloads/model/downloads.dart';
import 'package:netflix_clone/presentation/Pages/FastLaughs/Widgets/videoactions.dart';
import 'package:netflix_clone/presentation/Pages/FastLaughs/Widgets/videoplayer.dart';
import 'package:share_plus/share_plus.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget; //child
  final Downloads movieData; //data (we can add many number of data)

  const VideoListItemInheritedWidget({
    Key? key,
    // required Widget child, // automatically created
    required this.widget,
    required this.movieData,
  }) : super(
            key: key,
            // child: child,
            child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    //when it happens either by inherited widget or its child, ui will update
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        FastLaughVideoPlayer(
          videoUrl: videoUrls[index % videoUrls.length], //from FastLaughBloc
          onPlayOrPauseStateChanged: (bool bool) {},
        ),
        // Container(
        //   color: Colors.accents[index % Colors.accents.length],
        // ),
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CircleAvatar(
                          backgroundImage: posterPath == null
                              ? null
                              : NetworkImage(
                                  '$imageBaseUrlw500$posterPath',
                                ),
                          radius: 30,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ValueListenableBuilder(
                        valueListenable: videoIdsNotifier,
                        builder: (BuildContext context, Set<int> value, _) {
                          final _index = index;

                          //Due to "Cannot add to an unmodifiable list" error
                          // if (state.videoIds.contains(_index)) {
                          if (videoIdsNotifier.value.contains(_index)) {
                            return GestureDetector(
                              onTap: () {
                                //Due to "Cannot add to an unmodifiable list" error
                                // context
                                //     .read<FastlaughBloc>()
                                //     .add(FastlaughEvent.unlikedVideoEvent(
                                //       videoId: index,
                                //     ));

                                videoIdsNotifier.value.remove(_index);
                                videoIdsNotifier.notifyListeners();
                              },
                              child: const VideoActionWidget(
                                  icon: Icons.favorite_border_outlined,
                                  title: 'Liked'),
                            );
                          } else {
                            return GestureDetector(
                              onTap: () {
                                //Due to "Cannot add to an unmodifiable list" error
                                // context
                                //     .read<FastlaughBloc>()
                                //     .add(FastlaughEvent.likedVideoEvent(
                                //       videoId: index,
                                //     ));
                                videoIdsNotifier.value.add(_index);
                                videoIdsNotifier.notifyListeners();
                              },
                              child: const VideoActionWidget(
                                  icon: Icons.emoji_emotions_outlined,
                                  title: 'LOL'),
                            );
                          }
                        },
                      ),
                      const VideoActionWidget(
                          icon: Icons.add, title: 'My List'),
                      GestureDetector(
                          onTap: () {
                            final movieName =
                                VideoListItemInheritedWidget.of(context)
                                    ?.movieData
                                    .title;
                            if (movieName != null) {
                              Share.share(movieName);
                            }
                          },
                          child: const VideoActionWidget(
                              icon: Icons.share, title: 'Share')),
                      const VideoActionWidget(
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
  }
}
