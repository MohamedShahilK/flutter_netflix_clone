import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/api/baseurl.dart';
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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context
          .read<DownloadsBloc>()
          .add(const DownloadsEvent.getDownloadsImage()),
    );
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
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            // print(state.downloadImages);
            return SizedBox(
              width: size.width,
              height: size.width - 50,
              // color: Colors.white,
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 150,
                          backgroundColor: Colors.grey,
                        ),
                        ImageCard(
                          size: size,
                          // imageList: imageList[0],
                          imageList:
                              // '$imageBaseUrlw500${state.downloadImages[0].posterPath}',
                              '$imageBaseUrlw500${state.downloadImages[Random().nextInt(10)].posterPath}',
                          angle: 15,
                          margin: const EdgeInsets.only(left: 120),
                        ),
                        ImageCard(
                          size: size,
                          // imageList: imageList[1],
                          imageList:
                              '$imageBaseUrlw500${state.downloadImages[Random().nextInt(20)].posterPath}',
                          angle: -15,
                          margin: const EdgeInsets.only(right: 120),
                        ),
                        ImageCard(
                          size: size,
                          // imageList: imageList[2],
                          imageList:
                              '$imageBaseUrlw500${state.downloadImages[Random().nextInt(15)].posterPath}',
                          margin: const EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
            );
          },
        )
      ],
    );
  }
}
