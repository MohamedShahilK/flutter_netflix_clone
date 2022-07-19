import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
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
            height: 400,
            child: Row(
              children: [
                //Left Side
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.transparent,
                    height: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Text(
                                'FEB',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                '11',
                                style: TextStyle(
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
                  flex: 7,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //VideoWidget
                          const VideoWidget(),
                          const SizedBox(height: 10),

                          //Title and 2 Buttons
                          Row(
                            // mainAxisAlignment:
                            // MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Death on the Nile (2022)',
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
                          const Text(
                            'Coming on Friday',
                            style: TextStyle(fontSize: 18),
                          ),

                          //Description
                          const SizedBox(
                            width: 250,
                            child: Text(
                              'Belgian sleuth Hercule Poirot boards a glamorous river steamer with enough champagne to fill the Nile. But his Egyptian vacation turns into a thrilling search for a murderer when a picture-perfect couple’s idyllic honeymoon is tragically cut short.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
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
