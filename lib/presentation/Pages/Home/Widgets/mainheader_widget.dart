import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/Home/home_page.dart';

class MainHeaderWidget extends StatelessWidget {
  const MainHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
      child: Stack(
        children: [
          //Image
          Container(
            height: 550,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),

          //All buttons
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //MyList Button
                const CustomButton(title: 'My List', icon: Icons.add),

                //play button
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 35,
                  ),
                  label: const Text(
                    'Play',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                    ),
                  ),
                ),

                //Info button
                const CustomButton(title: 'Info', icon: Icons.info_outline)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
