import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/Home/home_page.dart';

final imageUrls = [
  'https://image.tmdb.org/t/p/w600_and_h900_bestv2/8jJuNuEgDPjxHEeNsehRZtceAlw.jpg',
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg",
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg',
];

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
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
              // image: const DecorationImage(
              //   image: NetworkImage(imageUrl),
              //   fit: BoxFit.fill,
              // ),
            ),
            child: Swiper(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Image.network(
                  // imageUrl,
                  imageUrls[index],
                  fit: BoxFit.fill,
                  loadingBuilder: (BuildContext ctx, Widget child,
                      ImageChunkEvent? progress) {
                    if (progress == null) {
                      return child;
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                );
              },
              autoplay: true,
              pagination: const SwiperPagination(
                  margin: EdgeInsets.only(bottom: 55),
                  builder: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Colors.grey),
                  )),
              control: const SwiperControl(),
            ),
          ),

          // Container(
          //   height: 550,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(5),
          //     image: const DecorationImage(
          //       image: NetworkImage(imageUrl),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),

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
