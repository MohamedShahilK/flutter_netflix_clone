import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/downloads/downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/model/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final videoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
];

ValueNotifier<Set<int>> videoIdsNotifier = ValueNotifier({});

@Injectable()
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  final DownloadsRepo _downloadsRepo;
  FastlaughBloc(this._downloadsRepo) : super(FastlaughState.intial()) {
    on<_getProfileImage>((event, emit) async {
      emit(FastlaughState(
        videoProfileImages: [],
        isLoading: true,
        isError: false,
        // videoIds: [],//Due to "Cannot add to an unmodifiable list" error
      ));

      //api calling
      final Either<MainFailures, List<Downloads>> result =
          await _downloadsRepo.getDownloadPageApi();

      final _state = result.fold(
        (failure) => state.copyWith(
          isError: true,
          isLoading: false,
        ),
        (resp) => state.copyWith(
          isError: false,
          isLoading: false,
          videoProfileImages: resp,
          // videoIds: state.videoIds,//Due to "Cannot add to an unmodifiable list" error
        ),
      );

      //send to UI
      emit(_state);
    });

    //Due to "Cannot add to an unmodifiable list" error

    // on<_LikedVideoEvent>((event, emit) {
    //   state.videoIds.add(event.videoId);
    //   emit(
    //     state.copyWith(
    //       videoIds: state.videoIds,
    //     ),
    //   );
    // });

    // on<_UnlikedVideoEvent>((event, emit) {
    //   state.videoIds.remove(event.videoId);
    //   emit(
    //     state.copyWith(
    //       videoIds: state.videoIds,
    //     ),
    //   );
    // });
  }
}
