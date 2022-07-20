import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/presentation/Pages/Search/Widgets/title.dart';

// const imageUrl =
//     "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fwBl3J2aEXru6mrr9Xg8O99Iz2K.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.isError) {
                return const Center(child: Text('Error While getting data'));
              }
              if (state.searchRespResult.isEmpty) {
                return const Center(child: Text('No Results Found'));
              } else {
                return GridView.count(
                  childAspectRatio: 1 / 1.5,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 5,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: List.generate(
                    state.searchRespResult.length,
                    (index) => SearchResultImageCard(
                      imageUrl:
                          state.searchRespResult[index].posterPathwithFullUrl,
                    ),
                  ),
                );
              }
            },
          ),
        )
      ],
    );
  }
}

class SearchResultImageCard extends StatelessWidget {
  const SearchResultImageCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
