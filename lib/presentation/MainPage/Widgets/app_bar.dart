import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ 
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            const Icon(Icons.cast),
            const SizedBox(width: 10),
            Container(
              height: 25,
              width: 25,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
