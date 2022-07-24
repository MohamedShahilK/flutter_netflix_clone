import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/videokeyfunction.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoWidget extends StatelessWidget {
  final String imageUrl;
  final String movieID;
  const VideoWidget({
    Key? key,
    required this.imageUrl,
    required this.movieID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            // color: Colors.green,
            height: 260,
            width: double.infinity,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: NetworkImage(
            //       imageUrl,
            //     ),
            //   ),
            // ),

            child: FutureBuilder(
              future: videoKeyFunc(movieID),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                // print(movieDataIdNotifier.value);
                print('data ${snapshot.data}');
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  return YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: snapshot.data, //Add videoID.
                      flags: const YoutubePlayerFlags(
                        hideControls: false,
                        controlsVisibleAtStart: false,
                        autoPlay: false,
                        mute: false,
                      ),
                    ),
                    showVideoProgressIndicator: false,
                  );
                } else {
                  // print("here");
                  return const SizedBox();
                }
              },
            )

            // child: Image.network(
            //   imageUrl,
            //   fit: BoxFit.fill,
            //   errorBuilder: (context, error, stackTrace) {
            //     return const Center(child: Icon(Icons.wifi_off));
            //   },
            //   loadingBuilder: (BuildContext _, Widget child,
            //       ImageChunkEvent? loadingProgress) {
            //     if (loadingProgress == null) {
            //       return child;
            //     } else {
            //       return const Center(child: CircularProgressIndicator());
            //     }
            //   },
            // ),
            ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.8),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.volume_off,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
