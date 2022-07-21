import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fastlaugh/fastlaugh_bloc.dart';
import 'package:netflix_clone/presentation/Pages/FastLaughs/Widgets/videolistitem.dart';

class ScreenFastLaughsPage extends StatelessWidget {
  const ScreenFastLaughsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FastlaughBloc>().add(const FastlaughEvent.getProfileImage());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastlaughBloc, FastlaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return const Center(child: Text('Error While Getting Data'));
            } else if (state.videoProfileImages.isEmpty) {
              return const Center(child: Text('Data is Empty'));
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.videoProfileImages.length,
                  (index) {
                    // return VideoListItem(index: index);
                    return VideoListItemInheritedWidget(
                      widget: VideoListItem(
                        key: Key(index.toString()),//not important
                        index: index,
                      ),
                      movieData: state.videoProfileImages[index],
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
