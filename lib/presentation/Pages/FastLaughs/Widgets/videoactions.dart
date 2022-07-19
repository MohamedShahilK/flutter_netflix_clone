import 'package:flutter/material.dart';

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(icon),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
