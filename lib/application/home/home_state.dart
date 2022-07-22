part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<Downloads> releasedPastYear,
    required List<Downloads> trendingMovie,
    required List<Downloads> tenseDrame,
    required List<Downloads> southIndian,
    required List<Downloads> top10tv,
  }) = _HomeState;

  factory HomeState.inital() => const HomeState(
        isLoading: true,
        isError: false,
        releasedPastYear: [],
        southIndian: [],
        tenseDrame: [],
        trendingMovie: [],
        top10tv: [],
      );
}
