part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getSearchIdle() = _getSearchIdle;
  const factory SearchEvent.getSearchResp({
    required String movieName,
  }) = _getSearchResp;
}
