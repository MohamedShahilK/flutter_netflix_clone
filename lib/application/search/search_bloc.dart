import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/search/model/search_response/search_response.dart';
import 'package:netflix_clone/domain/search/model/search_services.dart';
import 'package:netflix_clone/domain/search/model/searchidle/searchidle.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchServices _searchServices;
  SearchBloc(this._searchServices) : super(SearchState.initial()) {
    on<_getSearchIdle>((event, emit) async {
      if (state.searchIdleResult.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          searchIdleResult: state.searchIdleResult,
        ));
        // emit(state);
        return;
      }
      emit(state.copyWith(
        isError: false,
        isLoading: true,
      ));

      final Either<MainFailures, SearchIdle> result =
          await _searchServices.getSearchIdleApi();
      final _state = result.fold(
        (failure) => state.copyWith(
          isError: true,
          isLoading: false,
          searchRespResult: [],
        ),
        (resp) => state.copyWith(
          isError: false,
          isLoading: false,
          searchIdleResult: resp.results,
          searchRespResult: [],
          isSearchIdle: true,
        ),
      );
      emit(_state);
    });

    on<_getSearchResp>((event, emit) async {
      emit(state.copyWith(
        isError: false,
        isLoading: true,
      ));

      final Either<MainFailures, SearchResponse> result =
          await _searchServices.getSearchResultApi(movieName: event.movieName);
      final _state = result.fold(
        (failure) => state.copyWith(
          isError: true,
          isLoading: false,
        ),
        (resp) => state.copyWith(
          isError: false,
          isLoading: false,
          searchIdleResult: [],
          searchRespResult: resp.results,
          isSearchIdle: false,
        ),
      );
      emit(_state);
    });
  }
}
