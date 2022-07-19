import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.green,
          height: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/lRbDyjI7HEaXxflFQbYpqHRGFBJ.jpg',
              ),
            ),
          ),
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