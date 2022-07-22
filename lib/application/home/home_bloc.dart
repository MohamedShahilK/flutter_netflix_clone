import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/downloads/downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/model/downloads.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DownloadsRepo _downloadsRepo;
  HomeBloc(this._downloadsRepo) : super(HomeState.inital()) {
    on<_All>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));
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
          releasedPastYear: resp,
          trendingMovie: resp,
          tenseDrame: resp,
          southIndian: resp,
          top10tv: state.top10tv,
        ),
      );
      emit(_state);
    });
    on<_Top10tvApi>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));
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
          releasedPastYear: state.releasedPastYear,
          trendingMovie: state.trendingMovie,
          tenseDrame: state.tenseDrame,
          southIndian: state.southIndian,
          top10tv: resp,
        ),
      );
      emit(_state);
    });
  }
}
