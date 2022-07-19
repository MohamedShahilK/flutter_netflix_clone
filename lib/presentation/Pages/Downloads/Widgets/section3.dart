import 'package:flutter/material.dart';

class Section3 extends StatelessWidget {
  const Section3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //'set up' button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 45,
              onPressed: () {},
              color: const Color.fromARGB(255, 66, 105, 233),
              child: const Text(
                'Set up',
                style: TextStyle(fontSize: 20, fontFamily: 'Kalam'),
              ),
            ),
          ),
        ),

        //'See what you can download' button
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 59),
          margin: const EdgeInsets.only(top: 10),
          height: 45,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Kalam',
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}