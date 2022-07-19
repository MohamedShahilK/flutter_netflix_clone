import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/MainPage/Widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/Pages/Downloads/download_page.dart';
import 'package:netflix_clone/presentation/Pages/FastLaughs/fastlaughs_page.dart';
import 'package:netflix_clone/presentation/Pages/Home/home_page.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/new_hot_page.dart';
import 'package:netflix_clone/presentation/Pages/Search/search_page.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final pages = [
    const ScreenHomePage(),
    const ScreenNewHotPage(),
    const ScreenFastLaughsPage(),
    const ScreenSearchPage(),
    ScreenDownloadPage() 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        // valueListenable: BottomNavigationWidget.bottomNavIndexNotifier,
        valueListenable: bottomNavIndexNotifier,
        builder: (BuildContext context, int newIndex, _) {
          return pages[newIndex];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
