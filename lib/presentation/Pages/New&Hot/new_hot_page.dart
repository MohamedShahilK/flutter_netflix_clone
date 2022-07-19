import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/MainPage/Widgets/app_bar.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/comingsoon_widget.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/custom_tabbar.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/everyone_widget.dart';

class ScreenNewHotPage extends StatelessWidget {
  const ScreenNewHotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'New & Hot'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              const CustomTabBar(),
              Expanded(
                child: TabBarView(
                  children: [
                    //Coming soon
                    ListView.builder(
                      itemBuilder: (context, index) => const ComingSoonWidget(),
                      itemCount: 10,
                    ),

                    //everyones Watching
                    ListView.builder(
                      itemBuilder: (context, index) =>
                          const EveryonesWatchingWidget(),
                      itemCount: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
