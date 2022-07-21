part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughState with _$FastlaughState {
  factory FastlaughState({
    required List<Downloads> videoProfileImages,
    required bool isLoading,
    required bool isError,
    // required List<int> videoIds,//Due to "Cannot add to an unmodifiable list" error
  }) = _FastlaughState;

  factory FastlaughState.intial() => FastlaughState(
        videoProfileImages: [],
        isLoading: true,
        isError: false,
        // videoIds: [] //Due to "Cannot add to an unmodifiable list" error
      );
}
