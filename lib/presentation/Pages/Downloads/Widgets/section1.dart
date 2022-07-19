import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          const Icon(Icons.settings),
          const SizedBox(width: 10),
          Text(
            'Smart Downloads',
            style: GoogleFonts.quicksand(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}