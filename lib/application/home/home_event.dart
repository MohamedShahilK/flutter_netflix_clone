part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.all() = _All;
  const factory HomeEvent.pastYearApi() = _PastYearApi;
  const factory HomeEvent.trendingNowApi() = _TrendingNowApi;
  const factory HomeEvent.top10tvApi() = _Top10tvApi;
  const factory HomeEvent.tenseDramaApi() = _TenseDramaApi;
  const factory HomeEvent.southIndianMoviesApi() = _SouthIndianMoviesApi;
}
