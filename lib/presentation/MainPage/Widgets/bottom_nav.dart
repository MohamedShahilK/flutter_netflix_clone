import 'package:flutter/material.dart';

ValueNotifier<int> bottomNavIndexNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  // static ValueNotifier<int> bottomNavIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottomNavIndexNotifier,
        builder: (BuildContext context, int newIndex, _) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey.withOpacity(.6),
            selectedItemColor: Colors.white70,
            backgroundColor: Colors.black,
            currentIndex: newIndex,
            onTap: (val) {
              bottomNavIndexNotifier.value = val;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: 'Fast Laughs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download_for_offline_outlined),
                label: 'Downloads',
              ),
            ],
          );
        });
  }
}
