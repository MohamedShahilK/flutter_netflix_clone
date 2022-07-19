import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      // curve: Curves.easeIn,
      color: Colors.black12,
      // height: scrollNotifier.value ? 105 : 0,
      height: 105,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              children: [
                //Netflix logo
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Netflix_2015_N_logo.svg/512px-Netflix_2015_N_logo.svg.png',
                  height: 60,
                ),
                const Spacer(),

                //cast icon
                const Icon(
                  Icons.cast,
                  size: 30,
                ),
                const SizedBox(width: 15),

                //Avatar logo
                SizedBox(
                  height: 30,
                  width: 30,
                  // color: Colors.blue,
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png'),
                ),
              ],
            ),
          ),
          //Categories
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'TV Shows',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  'Movies',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
