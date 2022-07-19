import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/Pages/Downloads/Widgets/imagecard.dart';

class Section2 extends StatelessWidget {
  const Section2({
    Key? key,
    required this.size,
    required this.imageList,
  }) : super(key: key);

  final Size size;
  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Introducing Downloads for you',
          style: GoogleFonts.notoSans(
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Text(
          'We will download a personalised selection of\nmovies and shows for you,so there\'s\nalways something to watch on your\ndevice',
          style: GoogleFonts.notoSans(
            color: Colors.grey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        // print(state.result);
        SizedBox(
          width: size.width,
          height: size.width - 50,
          // color: Colors.white,
          // child: state.isLoading
          //     ? const Center(
          //         child: CircularProgressIndicator(),
          //       )
          //     :
          child: Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                radius: 150,
                backgroundColor: Colors.grey,
              ),
              ImageCard(
                size: size,
                imageList: imageList[0],
                angle: 10,
                margin: const EdgeInsets.only(left: 100),
              ),
              ImageCard(
                size: size,
                imageList: imageList[1],
                angle: -10,
                margin: const EdgeInsets.only(right: 100),
              ),
              ImageCard(
                size: size,
                imageList: imageList[2],
              ),
            ],
          ),
        )
      ],
    );
  }
}
