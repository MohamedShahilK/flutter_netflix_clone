import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/presentation/Pages/Search/Widgets/title.dart';

// const imageUrl =
//     'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/8Xs20y8gFR0W9u8Yy9NKdpZtSu7.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchBloc>().add(const SearchEvent.getSearchIdle());
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        final movie = state.searchIdleResult[index];
                        return TopSearchItemTile(
                          imageUrl: movie.posterPathwithFullUrl,
                          title: movie.originalTitle ?? 'No Title Provided',
                        );
                      }),
                      separatorBuilder: ((context, index) =>
                          const SizedBox(height: 10)),
                      itemCount: state.searchIdleResult.length,
                    );
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl, title;

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
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.fill)),
        ),
        const SizedBox(width: 5),
        //title
        Expanded(
            child: Text(title, style: const TextStyle(color: Colors.white))),
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
