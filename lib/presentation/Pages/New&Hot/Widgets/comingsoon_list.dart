import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/application/hotandnew/hotandnew_bloc.dart';
import 'package:netflix_clone/core/api/baseurl.dart';
import 'package:netflix_clone/presentation/Pages/New&Hot/Widgets/comingsoon_widget.dart';

class ComingSoonLIst extends StatelessWidget {
  const ComingSoonLIst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<HotandnewBloc>()
          .add(const HotandnewEvent.getComingSoonApi());
    });
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<HotandnewBloc>()
            .add(const HotandnewEvent.getComingSoonApi());
      },
      child: BlocBuilder<HotandnewBloc, HotAndNewState>(
        builder: (context, state) {
          // context.read<HotandnewBloc>().add(const HotandnewEvent.getEveryOnesApi());
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error While Getting Data'),
            );
          } else if (state.comingsoonResp.isEmpty) {
            return const Center(
              child: Text('Data is Empty'),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                final movieData = state.comingsoonResp[index];
                context
                    .read<HotandnewBloc>()
                    .add(const HotandnewEvent.getComingSoonApi());
                // print(movieData.releaseDate);
                String month = '';
                String date = '';
                String day = '';
                try {
                  final _date = DateTime.tryParse(movieData.releaseDate!);
                  final formattedDate =
                      DateFormat.yMMMEd('en_US').format(_date!);

                  month = formattedDate.split(" ")[1].toUpperCase();
                  date = movieData.releaseDate!.split('-')[2];
                  day = DateFormat.EEEE().format(_date);
                  // print(formattedDate);
                  // print(_day);
                } catch (e) {
                  month = '';
                  date = '';
                }

                return ComingSoonWidget(
                  key: const Key('coming soon'),
                  // month: formattedDate.split(" ").first.substring(0,2),
                  month: month,
                  date: date,
                  day: day,
                  movieName: movieData.originalTitle ?? 'No Title',
                  posterPath: '$imageBaseUrlw500${movieData.posterPath}',
                  description: movieData.overview ?? 'No Descrption',
                );
              },
              itemCount: state.comingsoonResp.length,
            );
          }
        },
      ),
    );
  }
}
