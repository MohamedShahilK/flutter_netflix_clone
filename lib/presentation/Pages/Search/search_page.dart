import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/Pages/Search/Widgets/search_result.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(.25),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 4),

                //
                prefixInsets: EdgeInsets.only(left: width / 2 - 50),
                onTap: () {},
                style: const TextStyle(
                  color: Colors.white60,
                ),
              ),
              // const Expanded(child: SearchIdle())
              const Expanded(child: SearchResult())
            ],
          ),
        ),
      ),
    );
  }
}
