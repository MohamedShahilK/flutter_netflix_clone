import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  final String imageUrl;
  const VideoWidget({
    Key? key,
    required this.imageUrl,
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
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return const Center(child: Icon(Icons.wifi_off));
            },
            loadingBuilder: (BuildContext _, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
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
