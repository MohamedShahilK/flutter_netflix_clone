import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 17, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Death on the Nile (2022)',
            style: GoogleFonts.dancingScript(
              fontSize: 25,
              letterSpacing: 1,
            ),
          ),
          const Text(
            'Belgian sleuth Hercule Poirot boards a glamorous river steamer with enough champagne to fill the Nile. But his Egyptian vacation turns into a thrilling search for a murderer when a picture-perfect couple’s idyllic honeymoon is tragically cut short.',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(height: 15),
          const VideoWidget(),
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
