part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchIdleData> searchIdleResult,
    required List<SearchResultData> searchRespResult,
    required bool isLoading,
    required bool isError,
    required bool isSearchIdle,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        isLoading: false,
        isError: false,
        searchIdleResult: [],
        searchRespResult: [],
        isSearchIdle: true
      );
}
