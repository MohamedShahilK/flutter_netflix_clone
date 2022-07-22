import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/hotandnew/hotandnew_bloc.dart';
import 'package:netflix_clone/core/api/baseurl.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/everyone_widget.dart';

class EveryonesWatchingList extends StatelessWidget {
  const EveryonesWatchingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HotandnewBloc>().add(const HotandnewEvent.getEveryOnesApi());
    });
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<HotandnewBloc>()
            .add(const HotandnewEvent.getEveryOnesApi());
      },
      child: BlocBuilder<HotandnewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error While Getting Data'),
            );
          } else if (state.everyonesResp.isEmpty) {
            return const Center(
              child: Text('Data is Empty'),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                // final movieData = state.everyonesResp[index];
                final movieData = state.everyonesResp[index];
                return EveryonesWatchingWidget(
                  movieName: movieData.originalName ?? 'No Title',
                  posterPath: '$imageBaseUrlw500${movieData.posterPath}',
                  description: movieData.overview ?? 'No Description',
                );
              },
              itemCount: 10,
            );
          }
        },
      ),
    );
  }
}
