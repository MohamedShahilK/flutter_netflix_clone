part of 'hotandnew_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required bool isLoading,
    required bool isError,
    required List<ComingSoonResultData> comingsoonResp,
    required List<EveryonesResultData> everyonesResp,
    required List<ComingSoonVideoData> comingsoonvideokey,
  }) = _HotAndNewState;

  factory HotAndNewState.initial() => const HotAndNewState(
        isLoading: true,
        isError: false,
        comingsoonResp: [],
        everyonesResp: [],
        comingsoonvideokey: [],
      );
}
