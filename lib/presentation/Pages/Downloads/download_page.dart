import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/MainPage/Widgets/app_bar.dart';
import 'package:netflix_clone/presentation/Pages/Downloads/Widgets/section1.dart';
import 'package:netflix_clone/presentation/Pages/Downloads/Widgets/section2.dart';
import 'package:netflix_clone/presentation/Pages/Downloads/Widgets/section3.dart';

class ScreenDownloadPage extends StatelessWidget {
  ScreenDownloadPage({Key? key}) : super(key: key);

  final imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fwBl3J2aEXru6mrr9Xg8O99Iz2K.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/49WJfeN0moxb9IPfGn8AIqMGskD.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/stTEycfG9928HYGEISBFaG1ngjM.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final widgetList = [
      const Section1(),
      const SizedBox(height: 20),
      Section2(size: size, imageList: imageList),
      const SizedBox(height: 45),
      const Section3(),
      const SizedBox(height: 10),
    ];
    return Scaffold(
      appBar: const PreferredSize(
        // preferredSize: Size(0, 50),
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => widgetList[index],
        itemCount: widgetList.length,
      ),
    );
  }
}



      // body: ListView(
      //   children: [
      //     const Section1(),
      //     const SizedBox(height: 20),
      //     Section2(size: size, imageList: imageList),
      //     const SizedBox(height: 45),
      //     const Section3(),
      //     const SizedBox(height: 10)
      //   ],
      // ),

