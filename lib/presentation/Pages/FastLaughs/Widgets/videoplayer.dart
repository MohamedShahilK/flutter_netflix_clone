import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onPlayOrPauseStateChanged;

  const FastLaughVideoPlayer({
    Key? key,
    required this.videoUrl,
    required this.onPlayOrPauseStateChanged,
  }) : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
    });
    _videoPlayerController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: GestureDetector(
                onTap: () {
                  // print('tapped');
                  _videoPlayerController.value.isPlaying
                      ? _videoPlayerController.pause()
                      : _videoPlayerController.play();
                },
                child: VideoPlayer(_videoPlayerController),
              ),
            )
          : const Center(
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            ),
    );
  }
}

//  @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: _videoPlayerController.value.aspectRatio,
//       child: SizedBox(
//         width: double.infinity,
//         height: double.infinity,
//         child: _videoPlayerController.value.isInitialized
//             ? VideoPlayer(_videoPlayerController)
//             : const Center(
//                 child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
//               ),
//       ),
//     );
//   }
