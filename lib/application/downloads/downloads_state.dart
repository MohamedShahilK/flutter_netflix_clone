part of 'downloads_bloc.dart';

@freezed
@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloadImages,
    required Option<Either<MainFailures, List<Downloads>>>
        downloadFailureOrSuccessOption,
  }) = _DownloadsState;

  factory DownloadsState.initial() => const DownloadsState(
        isLoading: true,
        downloadImages: [],
        downloadFailureOrSuccessOption: None(),
      );

  // factory DownloadsState.initial(){
  //       return const DownloadsState(
  //           loading: true
  //       );
  // }
}
