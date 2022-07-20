import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/domain/core/debouncer/debouncer.dart';
import 'package:netflix_clone/presentation/Pages/Search/Widgets/search_idle.dart';
import 'package:netflix_clone/presentation/Pages/Search/Widgets/search_result.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final _debouncer = Debouncer(milliseconds: 1000);
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
                onChanged: (value) {
                  if (value.isEmpty) {
                    context
                        .read<SearchBloc>()
                        .add(const SearchEvent.getSearchIdle());
                  } else {
                    _debouncer.run(() {
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.getSearchResp(movieName: value));
                    });
                  }
                },
              ),
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.isSearchIdle) {
                      return const SearchIdle();
                    } else {
                      return const SearchResult();
                    }
                  },
                ),
              )
              // const Expanded(child: SearchResult())
            ],
          ),
        ),
      ),
    );
  }
}
