import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/Search/Widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/8Xs20y8gFR0W9u8Yy9NKdpZtSu7.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: ((context, index) => const TopSearchItemTile()),
            separatorBuilder: ((context, index) => const SizedBox(height: 10)),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        //image
        Container(
          height: 85,
          width: size.width * 0.38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.fill)),
        ),
        const SizedBox(width: 5),
        //title
        const Expanded(
            child: Text('Movie Name', style: TextStyle(color: Colors.white))),
        //Play Button
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22,
          child: CircleAvatar(
            radius: 21,
            child: Icon(CupertinoIcons.play_circle),
          ),
        )
      ],
    );
  }
}
