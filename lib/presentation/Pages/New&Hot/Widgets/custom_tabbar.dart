import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TabBar(
        tabs: const [
          Text('🍿 Coming Soon'),
          Text('👀 Everyone\'s Watching'),
        ],
        //make the tabbar scrollable so title not coming down if it overflowed
        isScrollable: true,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        labelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        // unselectedLabelStyle: const TextStyle(),
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
